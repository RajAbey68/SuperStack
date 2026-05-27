# SuperStack

Codex-native recovery of Raj's super skills stack.

## What This Contains

`super-skills/` contains 12 focused Codex skills distilled from the requested Claude Code superstack:

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

## Install Into Codex

Copy the skill folders into your user skills directory:

```bash
mkdir -p ~/.codex/skills
cp -R super-skills/* ~/.codex/skills/
```

Start a fresh Codex session after copying so the skills are discovered.

## Related Local Project Folders

The project-context folders created for this stack live outside this repo:

- `~/dev/rental-agency`
- `~/dev/book-consulting`
- `~/dev/ai-integrity-web`

Each can contain both `CLAUDE.md` and `AGENTS.md` so Claude Code/Cowork and Codex can read the same operating context.

## Recovery Notes

This repository was recovered from the installed global Codex skills in `~/.codex/skills` after the local workspace copy went missing. The GitHub repo existed but only contained `.gitkeep` before recovery.
