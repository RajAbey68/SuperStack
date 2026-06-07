# Andre Karpathy Operating System (AKOS)

The AKOS system prompt — the "Infinite Brain" git-backed Markdown entity-graph
paradigm. Runtime-agnostic across Claude Code, AntiGravity, and Codex.

## Files
- `AKOS_SYSTEM_PROMPT.md` — the full system protocol / OS definition.
- `image_845364.jpg` — (referenced by the prompt for the 12 Entity Types; add it here).

## Use it on any machine
1. `git clone https://github.com/RajAbey68/SuperStack.git`
2. Point your agent at the prompt, e.g.:
   - Claude Code / Codex: load `andrej-karpathy-os/AKOS_SYSTEM_PROMPT.md` as the system prompt,
     or symlink it into your skills dir.
   - To install as a local skill copy:
     `cp andrej-karpathy-os/AKOS_SYSTEM_PROMPT.md ~/.agent-skills/andrej-karpathy-skills/`
3. Pull updates on any laptop with `git pull` to stay in sync.
