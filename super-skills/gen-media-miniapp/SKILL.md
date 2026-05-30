---
name: gen-media-miniapp
description: Use when designing or using a local generative media mini-app where both the human and agent can generate, store, browse, edit, and reuse images/videos/audio via APIs such as FAL, GPT Image, video models, upscalers, and local asset databases.
---

# Gen Media Mini-App

Use this when a reusable mini-app is better than one-off image/video generation.

## Core Idea

The mini-app gives both human and agent access to the same creative workspace:

- Agent generates assets through APIs.
- App stores assets in a local database.
- Human browses, edits, combines, and approves.
- Agent can reuse saved elements as references.

## Workflow

1. Define media types: image, video, audio, upscaling, image-to-video, video-to-video.
2. Define reusable elements: creator headshots, product shots, thumbnail styles, brand assets, competitor examples.
3. Add generation/editing API access through secure environment variables.
4. Store outputs locally with metadata: prompt, model, references, timestamp, tags.
5. Let the agent add generated assets to the app/grid.
6. Let the human do the final 10%: select, edit, refine, approve.

## Good Uses

- YouTube thumbnails.
- Product photos.
- Creator image variants.
- Style transfer from reference thumbnails.
- Batch asset generation.
- Fast visual ideation.
- Final human tweak after agent generation.

## Safety Rules

- Keep API keys out of repo files.
- Track model and prompt metadata for reproducibility.
- Respect likeness, brand, and copyright constraints.
- Do not rely on the agent alone for final taste decisions.

## Source Notes

Distilled from the user-provided creator/marketing skills transcript: the high-leverage pattern is a mini-app where the agent and human share one creative workspace.
