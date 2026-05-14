#!/usr/bin/env bash
set -euo pipefail

# Codex Superstack installer (user-scope)
# Usage: bash codex-superstack-install.sh

CODEX_HOME="${CODEX_HOME:-$HOME/.codex}"
SKILLS_DIR="$CODEX_HOME/skills"
PLUGINS_DIR="$CODEX_HOME/plugins"
MARKETPLACE_FILE="$HOME/.agents/plugins/marketplace.json"

mkdir -p "$SKILLS_DIR" "$PLUGINS_DIR" "$(dirname "$MARKETPLACE_FILE")" "$HOME/dev"

log() { printf "\n==> %s\n" "$*"; }
warn() { printf "\n[warn] %s\n" "$*"; }

install_repo_skill() {
  local name="$1" repo="$2"
  local target="$SKILLS_DIR/$name"
  if [ -d "$target/.git" ]; then
    log "Updating $name"
    git -C "$target" pull --ff-only
  else
    log "Installing $name from $repo"
    git clone "$repo" "$target"
  fi
}

install_repo_plugin() {
  local name="$1" repo="$2"
  local target="$PLUGINS_DIR/$name"
  if [ -d "$target/.git" ]; then
    log "Updating plugin $name"
    git -C "$target" pull --ff-only
  else
    log "Installing plugin $name from $repo"
    git clone "$repo" "$target"
  fi
}

append_marketplace_note() {
  local entry="$1"
  if [ ! -f "$MARKETPLACE_FILE" ]; then
    cat > "$MARKETPLACE_FILE" <<'JSON'
{
  "notes": []
}
JSON
  fi
  if ! grep -Fq "$entry" "$MARKETPLACE_FILE"; then
    python3 - "$MARKETPLACE_FILE" "$entry" <<'PY'
import json,sys
p,e=sys.argv[1],sys.argv[2]
obj=json.load(open(p))
obj.setdefault("notes",[])
obj["notes"].append(e)
json.dump(obj,open(p,"w"),indent=2)
print("added",e)
PY
  fi
}

create_claude_stub() {
  local dir="$1" content="$2"
  mkdir -p "$dir"
  if [ ! -f "$dir/CLAUDE.md" ]; then
    printf "%s\n" "$content" > "$dir/CLAUDE.md"
    log "Created $dir/CLAUDE.md"
  else
    log "Skipped existing $dir/CLAUDE.md"
  fi
}

log "PHASE 1: Engineering foundation"
install_repo_skill "superpowers" "https://github.com/obra/superpowers"
install_repo_skill "karpathy-skills" "https://github.com/forrestchang/andrej-karpathy-skills"
install_repo_skill "everything-claude-code" "https://github.com/affaan-m/everything-claude-code"
install_repo_plugin "open-design" "https://github.com/nexu-io/open-design"

log "PHASE 2: Swarm & orchestration"
install_repo_skill "ruflo" "https://github.com/ruvnet/ruflo"

log "PHASE 3: Second brain"
install_repo_skill "obsidian-skills" "https://github.com/kepano/obsidian-skills"

log "PHASE 4: Business operations"
install_repo_skill "real-estate-investment" "https://github.com/aznatkoiny/zAI-Skills"
install_repo_skill "claude-seo" "https://github.com/AgriciDaniel/claude-seo"
install_repo_skill "marketing-skills" "https://github.com/coreyhaines31/marketingskills"
install_repo_skill "claude-blog" "https://github.com/AgriciDaniel/claude-blog"
warn "TIDY and Sales are marketplace/npm managed in Claude; install manually where supported."

log "PHASE 5: Cowork project folders"
create_claude_stub "$HOME/dev/rental-agency" "# Rental Agency — Project Context"
create_claude_stub "$HOME/dev/book-consulting" "# Book & Consulting — Project Context"
create_claude_stub "$HOME/dev/ai-integrity-web" "# AI Integrity Web — Project Context"

log "PHASE 6: MCP notes"
append_marketplace_note "Register ruflo MCP: claude mcp add ruflo --scope user -- npx ruflo mcp start"
append_marketplace_note "Register open-design MCP: claude mcp add open-design --scope user -- node ~/dev/open-design/apps/daemon/dist/mcp/index.js"

log "PHASE 7: Verification checklist"
printf '%s\n' \
  "- Verify skills are visible in Codex skill list." \
  "- Verify plugin directories under $PLUGINS_DIR and skill directories under $SKILLS_DIR." \
  "- Manual Claude-only checks (/skills, /plugin list, token costs) must be run in Claude Code."

log "Done."
