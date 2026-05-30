---
name: supadata-mcp-research
description: Use when extracting transcripts or scraping/crawling web, video, or social content through Supadata MCP, including YouTube, TikTok, Instagram, Twitter/X, web pages, site maps, and creator/content research that needs structured external data.
---

# Supadata MCP Research

Use Supadata when a task needs fresh structured content from public web, video, or social sources.

## Setup Notes

Supadata MCP docs: `https://docs.supadata.ai/integrations/mcp`

Claude Code user-scope MCP:

```bash
claude mcp add --transport http --scope user supadata https://api.supadata.ai/mcp
```

After adding, run `/mcp` in Claude Code and authenticate Supadata if prompted.

For local stdio MCP clients, Supadata can also run with:

```bash
env X_API_KEY=your-api-key npx -y @supadata/mcp
```

Never commit API keys. Store them only in the client MCP config, environment, or secret manager.

## When To Use

- Pulling YouTube transcripts.
- Grounding scripts, hooks, and creator voice in real videos.
- Scraping public web pages for research.
- Crawling or mapping a site for context.
- Pulling structured data from supported social/video platforms.
- Comparing creator/channel/video patterns.

## Workflow

1. Identify the source URL, channel, site, or platform.
2. Use Supadata MCP tools when available before falling back to manual transcript paste or generic web scraping.
3. Store only the useful extracted facts, timestamps, and source URLs.
4. For content creation, extract patterns rather than copying source language.
5. For research, preserve source links and note retrieval date when freshness matters.
6. If Supadata cannot fetch a source, report that and use the next-best source.

## Output Rules

- Do not claim transcript access unless Supadata or another tool actually returned it.
- Keep direct quotes short.
- Include source URLs.
- Separate extracted facts from interpretation.
- Respect platform terms and privacy boundaries.
- Avoid storing raw large transcripts in skills; use summaries or source references.

## Skill Stacking

Pair with:

- `youtube-transcript-researcher` for creator/style analysis.
- `readwise-content-miner` for second-brain idea mining.
- `plugin-research-workflow` for multi-source research.
- `artifact-pipeline` to turn extracted material into scripts, briefs, diagrams, or decks.

## Source Notes

Created from the Supadata MCP docs and user-provided MCP request. Supadata's documented MCP features include transcript extraction, web scraping, site mapping, and crawling across YouTube, TikTok, Instagram, Twitter/X, and web pages.
