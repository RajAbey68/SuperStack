---
name: hermes-vps-foundation
description: Use when installing, configuring, updating, or troubleshooting Hermes Agent on a VPS or remote Linux host, including inference provider setup, model selection, service health, SSH access, and basic operational checks.
---

# Hermes VPS Foundation

Use this for the base Hermes Agent setup before adding gateways, memory, automations, Kanban, or MCP.

## Setup Flow

1. Confirm target host, OS, SSH access, and whether Hermes should run root-level, user-level, or containerized.
2. Install or update Hermes using the official project instructions for the current release.
3. Configure the inference provider: OpenRouter, Anthropic, OpenAI/Codex, local LM Studio, or another supported provider.
4. Use a strong model for agentic harness work; avoid cheap/small models for complex setup, debugging, and orchestration.
5. Start Hermes and send a short test message.
6. Check service status and persistence across logout/restart.

## Provider Notes

- Prefer OpenRouter when model flexibility matters.
- Prefer direct Anthropic/OpenAI when billing, reliability, or policy control matters.
- Prefer local models only when privacy is worth lower capability or slower iteration.
- Store API keys through Hermes config/environment mechanisms; never paste secrets into repo files or chat logs intended for reuse.

## Health Checks

Use Hermes-native status commands where available:

- Hermes version/update status.
- Gateway/service status.
- Active provider/model.
- Disk, RAM, and process health on the VPS.
- Whether services survive logout or reboot.

## Safety Rules

- Do not expose API keys, bot tokens, or personal access tokens.
- Avoid destructive remote commands unless the user explicitly approves the target and consequence.
- Keep a plain recovery note: host IP/domain, SSH user, install path, provider, service names, and backup repo.
- For long-lived agents, set up backups before doing advanced customization.

## Source Notes

Distilled from the user-provided "seven levels of Hermes Agent" transcript, level 1.
