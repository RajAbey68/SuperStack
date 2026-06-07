#!/usr/bin/env bash
# AKOS installer — wires the Andre Karpathy Operating System prompt into your agent tools.
# Usage: clone SuperStack, then run:  bash andrej-karpathy-os/install.sh
set -euo pipefail
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AKOS="$HERE/AKOS_SYSTEM_PROMPT.md"
[ -f "$AKOS" ] || { echo "ERROR: $AKOS not found"; exit 1; }
echo "AKOS source: $AKOS"
wire() { mkdir -p "$1"; ln -sf "$AKOS" "$1/AKOS_SYSTEM_PROMPT.md"; echo "  linked -> $1/AKOS_SYSTEM_PROMPT.md"; }
echo "Wiring AKOS into agent skill locations:"
wire "$HOME/.agent-skills/andrej-karpathy-skills"
wire "$HOME/.claude/skills/andrej-karpathy-os"
wire "$HOME/.codex/skills/andrej-karpathy-os"
echo "Done. Update anytime with:  ( cd \"$(cd "$HERE/.." && pwd)\" && git pull )"
