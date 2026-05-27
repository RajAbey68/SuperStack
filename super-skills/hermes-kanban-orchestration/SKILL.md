---
name: hermes-kanban-orchestration
description: Use when setting up or using Hermes Kanban, multi-agent task boards, specialist profiles, worker dispatch, visual task monitoring, research pipelines, content workflows, or parallel AI-agent project management.
---

# Hermes Kanban Orchestration

Use this to manage multiple Hermes workers through a visual board.

## Setup Flow

1. Update Hermes to a version that supports Kanban.
2. Ask Hermes to initialize or verify Kanban.
3. Create specialist profiles only as needed:
   - Researcher.
   - Analyst.
   - Writer.
   - Reviewer.
   - Developer.
   - QA/tester.
4. Confirm dashboard access, often through an SSH tunnel if hosted on a VPS.
5. Create one test task and verify it moves through the board.

## Task Design

Good tasks have:

- One clear output.
- Assigned profile or role.
- Dependencies when needed.
- Priority and size.
- Acceptance criteria.
- Place to store artifacts or final answer.

Bad tasks are vague, subjective, or ask every worker to touch the same thing at once.

## Example Research Pipeline

For a content topic:

1. **Researcher A**: What is new in this topic this week?
2. **Researcher B**: What already exists on YouTube/search/social in the last 30 days?
3. **Analyst**: Find the gap, contrarian angle, or underserved question.
4. **Writer**: Draft three concepts, hooks, titles, and outlines.
5. **Reviewer**: Check claims, novelty, and fit for the audience.

## Operating Rules

- Use Kanban for visibility, not just decoration.
- Keep human comments short and specific.
- Use dependencies so later tasks wait for earlier research.
- Ask for concise status reports rather than full logs.
- Archive completed tasks after outputs are captured.

## Source Notes

Distilled from the user-provided "seven levels of Hermes Agent" transcript, level 5.
