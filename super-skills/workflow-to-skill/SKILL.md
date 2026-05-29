---
name: workflow-to-skill
description: Use when a task, artifact, prompt, analysis process, or plugin workflow has produced a good result and should be converted into a reusable Codex skill. Also use when improving an existing skill after a better output pattern appears.
---

# Workflow To Skill

Use this when the user says some version of: "That was good, make it reusable."

## Capture Pattern

1. Identify the successful output.
2. Reverse-engineer the workflow that produced it.
3. Separate stable method from one-off context.
4. Write a focused `SKILL.md` with strong trigger metadata.
5. Add only essential instructions.
6. Install into `~/.codex/skills` if the user wants it active now.
7. Commit the source copy to SuperStack.

## Skill Shape

Every skill should include:

- Clear `name`.
- Trigger-rich `description`.
- Short workflow.
- Output standard.
- Guardrails.
- Source notes if it came from a transcript, repo, or repeated task.

Avoid:

- Long transcripts.
- Marketing filler.
- Huge lists that will not change behavior.
- Secrets or account-specific credentials.
- Overlapping skills when one router would do.

## Improve Existing Skills

When a better pattern appears during use:

1. Ask what specifically should become default.
2. Patch the relevant skill.
3. Keep the change narrow.
4. Reinstall the patched skill globally.
5. Commit the update.

## Test Prompt

After creating a skill, test mentally or with a quick dry run:

- Would its description trigger at the right time?
- Would the body change the agent's behavior?
- Is it smaller than the workflow it replaces?
- Does it avoid brittle project-specific assumptions?

## Source Notes

Distilled from the Codex capabilities transcript: iterate until the output is good, then turn the successful workflow into a reusable skill.
