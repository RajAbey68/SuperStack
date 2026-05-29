---
name: superstack-skill-auditor
description: Use when auditing, pruning, merging, improving, or quality-checking SuperStack skills, including weak trigger descriptions, duplicate/overlapping skills, stale skills, missing SKILL.md files, excessive length, unclear output standards, or whether a new skill should be added.
---

# SuperStack Skill Auditor

Use this to keep SuperStack sharp as it grows.

## Audit Flow

1. Run `scripts/audit-skills.sh` from the SuperStack repo if available.
2. Read `MANIFEST.md` to understand intended grouping.
3. Inspect suspicious skills, not every skill by default.
4. Classify issues as:
   - **Fix**: clear metadata, trigger, or instruction problem.
   - **Merge**: two skills overlap enough that one router would be better.
   - **Prune**: skill is stale, unused, too vague, or not a repeatable workflow.
   - **Keep**: skill has clear triggers and changes behavior.
5. Patch only the skills that need changes.
6. Run `scripts/sync-skills.sh`.
7. Commit the audit changes.

## What To Check

- Folder contains `SKILL.md`.
- Frontmatter has `name` and `description`.
- Description says when to use the skill, not just what it is.
- Skill body has a concrete workflow.
- Skill has guardrails or output standard when relevant.
- Skill is concise enough to be worth loading.
- Skill does not duplicate another skill's job.
- Skill avoids secrets, private tokens, or brittle account-specific details.

## Merge Heuristics

Merge skills when:

- They always trigger together.
- One is just a narrow restatement of another.
- The user would not know which one to invoke.
- A single router skill can dispatch the subcase cleanly.

Keep separate skills when:

- They trigger in different situations.
- They contain different safety rules.
- They map to different external tools or project domains.
- They are used by different businesses or workflows.

## New Skill Gate

Before adding a new skill, ask:

- Is this a repeatable workflow?
- Does it need procedural knowledge Codex would not infer?
- Is it better as a reference inside an existing skill?
- Can the trigger be described clearly?
- Is there a successful example output to reverse-engineer?

If the answer is mostly no, capture it as a note or manifest idea instead of a skill.

## Audit Output

Return:

- Total skills audited.
- Broken skills.
- Weak trigger descriptions.
- Merge/prune candidates.
- Recommended edits.
- PASS/FAIL for overall pack health.

## Source Notes

Created for the SuperStack repo to prevent skill sprawl as research, Hermes, Codex Ops, and business workflows accumulate.
