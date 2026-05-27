---
name: ruflo-orchestration
description: Use when the user explicitly asks for swarm, multi-agent, orchestration, parallel agents, federated agents, autopilot builds, or Ruflo/Claude Flow style coordination. Codex-native distillation of ruvnet/ruflo.
---

# Ruflo-Style Orchestration

Codex may use subagents only when the user explicitly requests delegation, subagents, swarm work, or parallel agent work.

## When To Orchestrate

Good fits:

- Independent research questions.
- Disjoint implementation slices with non-overlapping files.
- Parallel verification while local implementation continues.
- Large reviews where security, architecture, and tests can be assessed separately.

Poor fits:

- The immediate next step depends on the delegated result.
- The task is tightly coupled across the same files.
- The subtask is vague or requires constant judgment.

## Swarm Plan

Before spawning agents:

1. Define the shared goal and done criteria.
2. Split work by ownership boundary.
3. Assign each agent a concrete output and file scope.
4. Tell workers they are not alone in the codebase and must not revert others' changes.
5. Continue local non-overlapping work while agents run.

## Integration

- Review returned changes before trusting them.
- Merge concepts, not blindly.
- Run unified verification after integration.
- Close unused agents once their result is no longer needed.

## Source Notes

Distilled from `github.com/ruvnet/ruflo` swarm and coordination skills, adapted to Codex’s explicit subagent rules.
