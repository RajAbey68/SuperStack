---
name: hermes-curator
description: Use when setting up, tuning, or reviewing Hermes Curator for skill compaction, stale skill detection, context hygiene, token savings, generated-skill cleanup, and prevention of skill bloat or context rot.
---

# Hermes Curator

Use this to keep Hermes skills useful, compact, and low-noise.

## Purpose

Hermes can generate or accumulate skills over time. Curator prevents context rot by identifying unused or low-value skills and eventually removing them, depending on retention policy.

## Setup Flow

1. Update Hermes to the latest version before enabling curator features.
2. Check curator status.
3. Confirm default stale/delete thresholds.
4. Keep conservative defaults unless there is a clear reason:
   - Mark unused skills stale after a moderate idle window.
   - Delete only after a longer idle window.
5. Verify the curator is enabled and scheduled/running.

## Review Rules

Before deleting a skill:

- Check last used date.
- Check whether the skill is project-critical but rarely triggered.
- Preserve skills tied to compliance, security, backups, or recovery.
- Prefer marking stale before deleting.

## Good Curator Behavior

- Compacts duplicated generated skills.
- Flags stale skills.
- Reduces token cost.
- Keeps high-signal project and domain skills.
- Avoids deleting hand-authored source-of-truth skills without review.

## Safety Rules

- Back up skills before enabling automatic deletion.
- Never let curator modify Git-backed source packs without a backup or commit.
- Treat deletion as reversible only if backups are working.

## Source Notes

Distilled from the user-provided "seven levels of Hermes Agent" transcript, level 3.
