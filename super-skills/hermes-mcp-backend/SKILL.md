---
name: hermes-mcp-backend
description: Use when exposing Hermes Agent as an MCP server/backend so Claude Code, Codex, or another agent can query Hermes conversations, send messages, request approvals, fetch attachments, inspect channels, or delegate work through Hermes.
---

# Hermes MCP Backend

Use this when Hermes should act as a backend for other agents.

## Core Use Cases

- **Remote approval gate**: another agent pauses risky work and Hermes sends an approval prompt to Discord/Telegram/Slack.
- **Walk-away mode**: long coding sessions report progress to your phone and accept short replies.
- **Context bridge**: Claude Code, Codex, or another tool can query Hermes conversations, channels, or memory without copying everything into context.
- **Delegation backend**: a local agent delegates research, messaging, or task tracking to Hermes.

## Setup Flow

1. Verify Hermes gateway works first.
2. Expose Hermes through its MCP server mechanism or a small wrapper.
3. Register the MCP server with the client agent.
4. Test low-risk tools first:
   - List conversations/channels.
   - Fetch recent messages.
   - Send a test message to a private test channel.
5. Confirm auth, scope, and logs.
6. Document the MCP command, host, ports, and restart procedure.

## Client Verification

From the MCP client:

- List available Hermes tools.
- Fetch a known conversation.
- Read a few recent messages.
- Send a controlled test message.
- Ask the client agent to summarize what it learned from Hermes data.

## Security Rules

- Do not expose Hermes MCP publicly without authentication.
- Prefer local SSH tunnel, private network, or tightly scoped credentials.
- Treat chat history as sensitive.
- Restrict send-message tools if the client agent is untrusted.
- Use approval gates for destructive or external-facing actions.

## Good Tool Surfaces

- `list_conversations`
- `get_messages`
- `list_channels`
- `send_message`
- `fetch_attachment`
- `request_approval`
- `create_kanban_task`
- `get_task_status`

## Source Notes

Distilled from the user-provided "seven levels of Hermes Agent" transcript, level 7.
