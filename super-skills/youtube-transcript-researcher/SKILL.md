---
name: youtube-transcript-researcher
description: Use when grounding content, scripts, hooks, explanations, voice/style analysis, or research in YouTube videos, channels, creators, transcripts, Shorts, recent uploads, or named creator examples.
---

# YouTube Transcript Researcher

Use this to ground content work in real creator examples instead of generic model taste.

## Workflow

1. Identify the target creator, channel, video, topic, or style reference.
2. Fetch transcripts with Supadata MCP when available; otherwise use another transcript tool or user-provided transcript text.
3. Compare multiple videos when the user asks for voice, hook, or format patterns.
4. Extract reusable patterns:
   - Opening hook.
   - Pacing.
   - Sentence length.
   - Framing.
   - Story structure.
   - Repeated phrases.
   - CTA style.
5. Generate the requested output in the user's topic, not a copy of the source.
6. Mention which videos/transcripts informed the output.

## Common Uses

- Five hook options in a named creator's style.
- Explain a topic like a specific educator.
- Analyze the last 10 videos from a channel for content patterns.
- Turn a script outline into a stronger intro.
- Compare what already exists on YouTube before picking an angle.

## Output Rules

- Do not imitate a living creator so closely that it becomes impersonation; use broad style traits and explain the adaptation.
- Do not fabricate transcript access or video details.
- Keep direct transcript quotes short.
- Preserve source links when available.
- If transcripts are unavailable, say so and switch to title/description/comment/metadata analysis if useful.
- Use `supadata-mcp-research` when transcript extraction, web scraping, or multi-platform social/video data is needed.

## Source Notes

Distilled from the user-provided creator/marketing skills transcript: use YouTube transcripts as grounding for hooks, scripts, explanations, and creator voice analysis.
