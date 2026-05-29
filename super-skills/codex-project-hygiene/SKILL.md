---
name: codex-project-hygiene
description: Use when creating, recovering, organizing, or standardizing a Codex project folder, including AGENTS.md manual memory, output folders, artifact naming, project-local context, and keeping generated work discoverable on the user's computer.
---

# Codex Project Hygiene

Use this to keep Codex work from turning into a junk drawer.

## Folder Standard

For project-style work, prefer this shape unless the repo already has a stronger convention:

```text
project/
  AGENTS.md
  README.md
  outputs/
    docs/
    sheets/
    slides/
    images/
    apps/
    research/
  sources/
  scratch/
```

Only create folders that are useful for the current work.

## `AGENTS.md` Manual Memory

Use `AGENTS.md` for stable project preferences:

- Business/project purpose.
- Audience and tone.
- Design preferences.
- Recurring workflows.
- File organization rules.
- Things to avoid.
- Known integrations.

Do not store secrets, temporary chatter, or unverified assumptions as durable memory.

## Output Rules

- Put generated artifacts in `outputs/` with a meaningful subfolder.
- Use descriptive filenames with dates or task names when useful.
- Keep source inputs in `sources/` when they are needed for reproduction.
- Keep disposable experiments in `scratch/`.
- Before finishing, tell the user where the important files live.

## Recovery Rules

When recovering a project:

1. Check local folder, Git remote, installed/global copies, and synced cloud folders if available.
2. Rebuild from the most authoritative surviving source.
3. Commit recovery changes if the folder is Git-backed.
4. Add a short recovery note to `README.md` or `AGENTS.md` when it helps future you.

## Source Notes

Distilled from the Codex capabilities transcript: local files, projects, project-scoped chats, and `AGENTS.md` as manual memory.
