---
name: everything-engineering-toolkit
description: Use as a router for broad engineering tasks: repo onboarding, architecture decisions, API/backend/frontend patterns, test strategy, security review, deployment checks, documentation, automation, and production readiness. Distills affaan-m/everything-claude-code.
---

# Everything Engineering Toolkit

Use this when the task spans multiple engineering concerns and needs routing.

## First Pass

1. Identify the primary domain: frontend, backend, data, infra, security, docs, tests, release, or automation.
2. Read local project instructions and the smallest relevant code area.
3. Choose the existing project pattern over a new one.
4. Define the verification surface: unit, integration, e2e, lint/typecheck, browser, logs, or manual artifact inspection.

## Domain Playbooks

- **Repo onboarding**: map stack, package manager, entrypoints, test commands, env requirements, and risky shared modules.
- **Architecture**: capture current boundaries, propose the smallest change, write an ADR only if the decision will matter later.
- **API/backend**: validate contracts, errors, auth, persistence, idempotency, and observability.
- **Frontend**: verify responsive layout, interaction states, accessibility, and real browser rendering.
- **Testing**: add focused coverage at the lowest level that proves behavior; widen when contracts or workflows change.
- **Security**: look for authz bypass, injection, secret leakage, unsafe deserialization, SSRF, path traversal, and supply-chain risk.
- **Deployment**: check env vars, migrations, build output, rollback path, and runtime assumptions.
- **Documentation**: write only docs that help future operation, onboarding, or user-facing behavior.

## Output Standard

For implementation: concise summary, files changed, checks run, remaining risks.

For analysis/review: findings first, severity, file references, reproduction or reasoning, and recommended fix.

## Source Notes

Distilled from the broad skill catalogue in `github.com/affaan-m/everything-claude-code`. This Codex skill intentionally routes instead of importing hundreds of overlapping skills.
