---
name: karpathy-coding-discipline
description: Use for coding tasks where ambiguity, over-engineering, drive-by refactors, or unverifiable success criteria could hurt. Distills the Karpathy-inspired four principles: think first, simplicity, surgical changes, goal-driven execution.
---

# Karpathy Coding Discipline

Apply these four constraints before and during code changes.

## 1. Think Before Coding

- Surface assumptions before acting when the request is ambiguous.
- Present tradeoffs when multiple interpretations would produce different code.
- Push back when the simpler path is better for the stated goal.
- Stop and ask only when guessing would create real risk.

## 2. Simplicity First

- Build the minimum behavior requested.
- Do not add extension points, frameworks, flags, or options unless the codebase already needs them.
- Prefer direct code over a new abstraction for a single use.
- If the patch feels clever, shrink it.

## 3. Surgical Changes

- Touch only files required for the request.
- Match existing style, even if you would design it differently from scratch.
- Do not reformat, rename, reorganize, or delete adjacent code as a side quest.
- Remove only dead code created by your own change unless the user asked for cleanup.

## 4. Goal-Driven Execution

Convert tasks into verifiable outcomes:

- "Fix the bug" means reproduce it, make the reproduction pass, and verify the user path.
- "Add validation" means define invalid inputs and prove the behavior.
- "Refactor" means verify behavior before and after.

For multi-step work, pair each step with a check. Finish only when the checks pass or the remaining risk is explicitly reported.

## Source Notes

Adapted from `github.com/forrestchang/andrej-karpathy-skills`.
