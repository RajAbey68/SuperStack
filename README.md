# SuperStack

Codex-native recovery of Raj's super skills stack.

## What This Contains

`super-skills/` contains focused Codex skills distilled from the requested Claude Code superstack and added research workflows:

- `superpowers-codex`
- `karpathy-coding-discipline`
- `everything-engineering-toolkit`
- `open-design-codex`
- `ruflo-orchestration`
- `obsidian-second-brain`
- `real-estate-investment-uk`
- `tidy-vacation-rental-ops`
- `claude-seo-codex`
- `marketing-growth-codex`
- `claude-blog-codex`
- `sales-pipeline-codex`
- `auto-research-loop`
- `hermes-vps-foundation`
- `hermes-discord-gateway`
- `hermes-curator`
- `hermes-automation-backups`
- `hermes-kanban-orchestration`
- `hermes-holographic-memory`
- `hermes-mcp-backend`
- `codex-project-hygiene`
- `workflow-to-skill`
- `artifact-pipeline`
- `plugin-research-workflow`
- `automation-factory`
- `visual-verification`
- `chronicle-context`
- `superstack-skill-auditor`
- `youtube-transcript-researcher`
- `readwise-content-miner`
- `excalidraw-content-diagrams`
- `paper-canvas-diagrams`
- `motion-overlay-studio`
- `gen-media-miniapp`
- `brand-deal-manager`
- `buffer-idea-publisher`

See [MANIFEST.md](MANIFEST.md) for the grouped skill catalogue.

## Install Into Codex

Sync the skill folders into your user skills directory:

```bash
scripts/sync-skills.sh
```

Start a fresh Codex session after copying so the skills are discovered.

## Audit Skills

Run a quick structural audit:

```bash
scripts/audit-skills.sh
```

## Related Local Project Folders

The project-context folders created for this stack live outside this repo:

- `~/dev/rental-agency`
- `~/dev/book-consulting`
- `~/dev/ai-integrity-web`

Each can contain both `CLAUDE.md` and `AGENTS.md` so Claude Code/Cowork and Codex can read the same operating context.

## Recovery Notes

This repository was recovered from the installed global Codex skills in `~/.codex/skills` after the local workspace copy went missing. The GitHub repo existed but only contained `.gitkeep` before recovery.
