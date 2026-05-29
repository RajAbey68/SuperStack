#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE="$ROOT/super-skills"

if [[ ! -d "$SOURCE" ]]; then
  echo "Missing source directory: $SOURCE" >&2
  exit 1
fi

total=0
missing_skill=0
missing_name=0
missing_description=0
long_files=0

echo "SuperStack skill audit"
echo "Source: $SOURCE"
echo

for dir in "$SOURCE"/*; do
  [[ -d "$dir" ]] || continue
  total=$((total + 1))
  name="$(basename "$dir")"
  file="$dir/SKILL.md"

  if [[ ! -f "$file" ]]; then
    echo "FAIL $name: missing SKILL.md"
    missing_skill=$((missing_skill + 1))
    continue
  fi

  if ! grep -q '^name:' "$file"; then
    echo "FAIL $name: missing frontmatter name"
    missing_name=$((missing_name + 1))
  fi

  if ! grep -q '^description:' "$file"; then
    echo "FAIL $name: missing frontmatter description"
    missing_description=$((missing_description + 1))
  fi

  lines="$(wc -l < "$file" | tr -d ' ')"
  if [[ "$lines" -gt 250 ]]; then
    echo "WARN $name: long skill file ($lines lines)"
    long_files=$((long_files + 1))
  fi
done

echo
echo "Total skills: $total"
echo "Missing SKILL.md: $missing_skill"
echo "Missing name: $missing_name"
echo "Missing description: $missing_description"
echo "Long files >250 lines: $long_files"

if [[ "$missing_skill" -eq 0 && "$missing_name" -eq 0 && "$missing_description" -eq 0 ]]; then
  echo "PASS"
else
  echo "FAIL"
  exit 1
fi
