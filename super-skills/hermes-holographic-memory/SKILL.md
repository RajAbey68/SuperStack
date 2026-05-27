---
name: hermes-holographic-memory
description: Use when setting up, seeding, auditing, or using Hermes holographic memory or long-term fact storage, including local memory stores, session extraction, contradiction checks, user preferences, project facts, and durable agent memory.
---

# Hermes Holographic Memory

Use this to give Hermes durable, structured memory without relying only on chat context.

## Setup Flow

1. Run Hermes memory setup.
2. Prefer a local memory backend when privacy matters.
3. Enable automatic fact extraction at session end if the user wants maximum memory.
4. Choose a conservative default trust score for new facts.
5. Restart the gateway so memory settings are loaded.
6. Test by asking Hermes to confirm the fact store exists and can read/write.

## Seeding Memory

Useful sources:

- Existing `user.md`.
- Existing `memory.md`.
- Previous sessions.
- Project `AGENTS.md` or `CLAUDE.md`.
- Current operating preferences.
- VPS setup notes.
- Repeated business facts.

Ask Hermes to extract only durable facts, not every chat detail.

## What To Store

- User preferences: style, verbosity, tools, approval habits.
- Business/project facts.
- Ongoing commitments and deadlines.
- Sponsor/client history.
- Infrastructure facts: VPS host, services, backup repo, dashboards.
- Lessons learned from completed work.
- Contradictions requiring user clarification.

## What Not To Store

- Secrets, tokens, passwords.
- Temporary chatter.
- Unverified claims as facts.
- Sensitive third-party data unless the user clearly wants that stored.
- Huge summaries that blur useful detail.

## Memory Quality

- Prefer atomic facts.
- Include source and date when useful.
- Lower trust for inferred facts.
- Ask when two remembered facts conflict.
- Periodically audit stale or contradictory memory.

## Source Notes

Distilled from the user-provided "seven levels of Hermes Agent" transcript, level 6.
