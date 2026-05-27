---
name: auto-research-loop
description: Use when designing, building, or reviewing autonomous research loops where an agent repeatedly proposes experiments, edits one allowed file, runs a fixed evaluation, keeps improvements, and reverts failures. Applies to optimization of code, prompts, marketing assets, trading strategies, model training, website performance, and any measurable experiment loop.
---

# Auto Research Loop

Use this for "if you can score it, you can auto-research it" workflows.

## Core Pattern

Auto research needs three things:

1. **One editable artifact** - the only file the agent may change.
2. **One protected evaluator** - the metric and scoring script the agent must never edit.
3. **One scalar metric** - a number with a clear direction: higher is better or lower is better.

If any of those are missing, pause and design them before running the loop.

## Three-File Architecture

- `program.md`: human-written goal, constraints, rules, allowed file, protected files, time budget, metric direction, and commit/revert protocol.
- `train.*`: the editable artifact. This can be code, config, prompt text, copy, rules, math, or strategy logic.
- `prepare.*` or `benchmark.*`: protected evaluator. It runs the experiment and prints a stable score.

The agent may edit only the editable artifact. It must not edit the evaluator, metric, fixture data, or benchmark harness.

## Loop Protocol

1. Read `program.md`.
2. Record baseline score.
3. Form one hypothesis.
4. Modify only the allowed file.
5. Run the evaluator under the same time/resource budget.
6. Compare against the current best score.
7. If better beyond noise, commit with score and hypothesis.
8. If worse or inconclusive, revert and record the result.
9. Repeat until the time, cost, or iteration budget is reached.

## Metric Design

Good metrics are:

- Automated.
- Fast enough to run many times.
- Hard to game.
- Stable across repeated runs.
- Aligned with the real goal.

Bad fits:

- Brand taste, UX preference, or strategy judgment without a numeric proxy.
- Loops where a human must judge every result.
- Slow real-world feedback cycles unless the task can use a valid simulator or offline benchmark.
- Metrics that reward cheating, overfitting, or longer runtime.

## Time Boxing

Use equal budgets for every experiment:

- Same training/evaluation duration.
- Same data split or fixture set.
- Same hardware/runtime when possible.
- Same number of trials for noisy benchmarks.

If the metric is noisy, rerun the baseline and candidate enough times to distinguish improvement from variance.

## Useful Domains

- **Website performance**: editable CSS/JS/HTML, benchmark load time or Lighthouse metric.
- **Prompt engineering**: editable system prompt, evaluator with test cases and pass/fail score.
- **Marketing**: editable copy or creative spec, offline conversion proxy or live A/B score.
- **Trading research**: editable strategy rules, backtest Sharpe ratio or risk-adjusted return.
- **Model optimization**: editable training file/config, validation loss or accuracy under fixed compute.
- **Code optimization**: editable implementation file, benchmark runtime and correctness tests.

## Safety Rules

- Never let the agent edit the scoring function.
- Never accept an improvement that breaks correctness tests.
- Keep an experiment log with hypothesis, score, decision, and commit SHA.
- Watch for reward hacking: if the output looks suspiciously good, inspect what changed.
- For financial, medical, legal, or production decisions, treat results as research leads, not automatic decisions.

## `program.md` Template

```markdown
# Auto Research Program

## Goal
Optimize [artifact] for [real-world objective].

## Editable File
- The agent may edit only: `[path/to/train.file]`

## Protected Files
- The agent must not edit: `[path/to/prepare_or_benchmark.file]`
- The agent must not edit fixtures, tests, package config, or this program unless explicitly instructed.

## Metric
- Command: `[evaluation command]`
- Score direction: `[higher|lower] is better`
- Success threshold: improvement of at least `[threshold]` over current best
- Correctness gate: `[test command]` must pass

## Budget
- Maximum iterations: `[n]`
- Maximum runtime per experiment: `[duration]`
- Reruns per candidate: `[n]`

## Loop
For each iteration:
1. State one hypothesis.
2. Edit only the allowed file.
3. Run correctness gate.
4. Run metric command.
5. Compare with current best.
6. Commit if better; otherwise revert.
7. Append result to `experiments.tsv`.
```

## Source Notes

Based on the auto-research pattern described by Andrej Karpathy and the user-provided transcript: a protected evaluator, one editable file, one scalar metric, a fixed time budget, and commit/revert iteration.
