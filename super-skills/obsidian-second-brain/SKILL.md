---
name: obsidian-second-brain
description: Use for Obsidian vault work, markdown notes, wikilinks, frontmatter/properties, callouts, embeds, JSON Canvas, Bases, research notes, meeting notes, and second-brain organization.
---

# Obsidian Second Brain

Use Obsidian-flavored Markdown and preserve vault conventions.

## Note Workflow

1. Identify the vault path and existing note style.
2. Add YAML properties only when useful: `title`, `date`, `tags`, `aliases`, `status`, `source`.
3. Use wikilinks for internal notes: `[[Note]]`, `[[Note#Heading]]`, `[[Note|label]]`.
4. Use standard Markdown links for external URLs.
5. Use callouts sparingly for decisions, warnings, sources, and tasks.
6. Keep tags consistent and hierarchical where the vault already does that.

## Useful Syntax

```markdown
---
title: Example
tags:
  - project/active
---

> [!summary]
> Key point.

Related: [[Another Note]]
Embed: ![[Diagram.png|500]]
```

## Research Capture

- Separate facts, interpretation, decisions, and open questions.
- Attribute claims with source links and retrieval dates when freshness matters.
- Create backlinks to projects, people, and domains so notes become findable later.

## Source Notes

Distilled from `github.com/kepano/obsidian-skills`, especially Obsidian Markdown, CLI, Bases, JSON Canvas, and extraction workflows.
