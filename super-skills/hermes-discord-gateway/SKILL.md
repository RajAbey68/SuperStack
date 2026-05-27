---
name: hermes-discord-gateway
description: Use when connecting Hermes Agent to Discord or another messaging gateway, creating a Discord bot, configuring gateway intents and permissions, testing bot replies, or using Hermes from phone/chat interfaces.
---

# Hermes Discord Gateway

Use this to make Hermes reachable from Discord or similar messaging tools.

## Discord Setup Flow

1. Create or choose a private Discord server for AI agents and automations.
2. Create a Discord application and bot in the Discord Developer Portal.
3. Set bot name/icon if useful.
4. Generate a bot token and paste it only into Hermes gateway setup/config.
5. Enable required privileged gateway intents:
   - Presence intent, if needed.
   - Server members intent, if needed.
   - Message content intent.
6. Grant only needed bot permissions: read messages, send messages, create threads, attach files, embed links, read history, use slash commands.
7. Generate OAuth2 invite URL with `bot` and `applications.commands` scopes.
8. Invite bot to the server.
9. Provide Hermes the authorized user ID and optional home channel.
10. Install/start the gateway as a persistent service if this is a 24/7 setup.

## Verification

- Mention the bot in Discord.
- Confirm Hermes reacts or acknowledges.
- Open the created thread or reply surface.
- Ask a simple identity/status question.
- Confirm completion indicator behavior if the gateway supports it.

## Operating Pattern

Use Discord for:

- Phone-based check-ins.
- Long-running task progress.
- Approval prompts.
- Research dispatch.
- Quick status reports.
- Human-readable outputs from automations.

## Safety Rules

- Treat Discord bot tokens as secrets.
- Restrict bot access to a private server/channel first.
- Avoid granting admin permissions unless absolutely necessary.
- Keep one server/channel dedicated to agents so work does not leak into unrelated communities.

## Source Notes

Distilled from the user-provided "seven levels of Hermes Agent" transcript, level 2.
