---
name: superpowers-codex
description: Use for non-trivial software work where the user wants disciplined planning, TDD, debugging, implementation, code review, branch finishing, or sub-agent-style execution. Codex-native distillation of obra/superpowers.
---

# Superpowers for Codex

Use this as a lightweight operating system for serious engineering work.

## Workflow Router

- **Vague build request**: clarify goal, constraints, success criteria, and risks before editing.
- **Approved design**: produce an implementation plan with exact files, verification, and rollback notes.
- **Feature or bug fix**: use tests-first unless the user explicitly waives it or the task is configuration/prototype-only.
- **Bug investigation**: reproduce, isolate root cause, fix the cause, add regression coverage, verify.
- **Parallelizable work**: use Codex subagents only when the user explicitly asks for delegation or parallel agents.
- **Review**: lead with findings by severity, then residual risk and test gaps.
- **Completion**: verify locally, summarize what changed, name what could not be checked.

## TDD Loop

1. Write the smallest failing test for the new or broken behavior.
2. Run it and confirm it fails for the expected reason.
3. Implement the smallest production change that can pass.
4. Run the focused test, then the relevant wider suite.
5. Refactor only while tests stay green.

If production code was written before the failing test, do not build more on top of it. Either delete/rework it into a proper test-first change or explain why TDD is inappropriate for this case.

## Planning Standard

Plans should be executable by another engineer:

- State the user-visible outcome.
- List concrete file/module changes.
- Include verification per step.
- Avoid speculative abstractions and unrelated cleanup.
- Keep task slices small enough to review.

## Debugging Standard

1. Capture the symptom and expected behavior.
2. Reproduce with the narrowest command, test, log, or browser path.
3. Trace from symptom to cause; do not patch around unknowns.
4. Add a regression test or durable check.
5. Verify the original scenario and the adjacent risky path.

## Completion Gate

Before saying done:

- Check the diff for unrelated edits.
- Run the most relevant verification available.
- Confirm generated UI or website changes visually when feasible.
- Report any skipped checks plainly.

## Source Notes

Inspired by `github.com/obra/superpowers`, especially its planning, TDD, systematic debugging, review, and verification-before-completion skills. Adapted for Codex tools and the current workspace rules.
