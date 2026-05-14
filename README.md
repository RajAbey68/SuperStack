# Codex Superstack Bootstrap

This repo contains a Codex-oriented bootstrap script that mirrors your Claude Code superstack intent in a reproducible form for user-scope installs.

## What it does

- Clones/updates selected skill/plugin repos into `~/.codex` (or `$CODEX_HOME`).
- Creates Cowork-friendly project folders and only writes `CLAUDE.md` stubs if they do not already exist.
- Adds reminders for MCP registration steps that still need Claude CLI support.

## Run

```bash
bash codex-superstack-install.sh
```

## Notes

- Some items from your Claude-native prompt are marketplace-specific (`/plugin install`, `npx skills add`, official Sales plugin). Those are left as manual steps where Codex cannot perform Claude marketplace actions directly.
- The script is idempotent for cloned repos and safe for existing `CLAUDE.md` files.
