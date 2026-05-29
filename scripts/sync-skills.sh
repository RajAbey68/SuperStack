#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE="$ROOT/super-skills"
DEST="${CODEX_SKILLS_DIR:-$HOME/.codex/skills}"

if [[ ! -d "$SOURCE" ]]; then
  echo "Missing source directory: $SOURCE" >&2
  exit 1
fi

mkdir -p "$DEST"

count=0
for skill_dir in "$SOURCE"/*; do
  [[ -d "$skill_dir" ]] || continue
  name="$(basename "$skill_dir")"
  if [[ ! -f "$skill_dir/SKILL.md" ]]; then
    echo "Skipping $name: missing SKILL.md" >&2
    continue
  fi

  rm -rf "$DEST/$name"
  cp -R "$skill_dir" "$DEST/$name"
  count=$((count + 1))
done

echo "Synced $count skills to $DEST"
