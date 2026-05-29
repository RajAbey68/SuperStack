---
name: automation-factory
description: Use when turning a repeated Codex workflow into a scheduled automation, recurring check, reminder, monitor, digest, backup, weekly report, or thread wakeup.
---

# Automation Factory

Use this when the user says "do this every..." or when a workflow is clearly recurring.

## Candidate Test

Automate when the workflow has:

- A stable trigger or schedule.
- A clear output.
- Repeatable data sources.
- Low ambiguity.
- A useful notification or artifact.

Do not automate vague judgment calls until the workflow has been run manually at least once.

## Setup Flow

1. Name the automation clearly.
2. Define the schedule in the user's locale.
3. Write a self-contained prompt.
4. Specify source locations, plugins, and expected output.
5. Choose thread wakeup for short follow-ups in the same conversation.
6. Choose standalone scheduled automation for recurring reports or audits.
7. Verify it appears in the automation list.

## Good Automations

- Weekly brand deal scan.
- Friday research digest.
- Daily repo backup/status.
- Weekly SuperStack skill audit.
- Monthly content calendar.
- Daily inbox triage.
- Deployment or CI watch.
- VPS health check.

## Prompt Standard

Automation prompts should include:

- Task objective.
- Data sources.
- Output format.
- What to do when no data is found.
- What not to touch.

Do not include raw schedule instructions in the task prompt when the automation tool stores schedule separately.

## Source Notes

Distilled from the Codex capabilities transcript: once a workflow and skill are useful, schedule them.
