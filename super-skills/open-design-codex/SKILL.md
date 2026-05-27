---
name: open-design-codex
description: Use for frontend/UI design, brand systems, landing pages, dashboards, design critiques, visual polish, responsive layout, screenshots, and production interface implementation. Codex-native distillation of nexu-io/open-design.
---

# Open Design for Codex

Use this to make shipped interfaces feel intentional, not merely functional.

## Design Workflow

1. Identify the product type and audience: operational tool, SaaS, editorial, marketplace, game, portfolio, or marketing page.
2. Inspect existing design conventions before adding new visual language.
3. Choose a restrained system: type scale, spacing rhythm, color roles, component states, and interaction patterns.
4. Build the actual first-screen experience, not a decorative explanation page.
5. Verify in browser at desktop and mobile widths; fix clipping, overlap, blank canvases, and awkward wrapping.

## Interface Rules

- Use real controls for real actions: icons for tools, tabs for views, toggles for binary settings, sliders/inputs for numeric values.
- Keep dashboards and operations screens dense, calm, and scannable.
- Use visual assets for websites, games, products, venues, and branded pages when inspection matters.
- Avoid nested cards, giant rounded UI everywhere, one-hue palettes, decorative blobs, and marketing fluff inside tools.
- Text must fit inside its container at all target widths.

## Verification

For local apps:

- Start or reuse the dev server.
- Open the relevant page in the in-app browser.
- Capture at least one desktop and one mobile check when layout is user-visible.
- Confirm primary interactions work.

## Source Notes

Distilled from `github.com/nexu-io/open-design` plus Codex’s local frontend verification workflow.
