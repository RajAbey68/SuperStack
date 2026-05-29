---
name: visual-verification
description: Use after creating or modifying a local website, app, interactive UI, browser workflow, visual artifact, Canva/slides output, or generated image set where the result must be inspected rather than trusted from code alone.
---

# Visual Verification

Use this when user-visible output matters.

## Web/App Verification

1. Start or identify the local server or static HTML file.
2. Open it in the in-app browser.
3. Check desktop and mobile-sized views when responsive behavior matters.
4. Click primary buttons, navigation, forms, tabs, and menus.
5. Look for blank screens, broken assets, overlap, clipping, unreadable text, and console/runtime errors.
6. Fix issues and recheck.

## Artifact Verification

- **Images**: confirm the generated images exist and match the requested subject.
- **Slides/decks**: render or open and inspect layout, text fit, and image placement.
- **Documents**: render/open and inspect headings, charts, tables, and page flow.
- **Spreadsheets**: open/check formulas, charts, tabs, and formatting.
- **Canva/computer-use outputs**: confirm the app action actually completed.

## Report Standard

Tell the user:

- What was checked.
- What passed.
- What was fixed.
- What could not be verified.
- Where the final artifact lives.

## Safety Rules

- Do not claim UI is good without seeing it when browser verification is feasible.
- Do not leave dev servers running unless they are useful for the user.
- For account-backed apps, avoid clicking destructive controls unless the user asked for it.

## Source Notes

Distilled from the Codex capabilities transcript: browser and computer control should be used to test real interfaces and artifacts, not just generate them.
