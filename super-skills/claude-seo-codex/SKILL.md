---
name: claude-seo-codex
description: Use for SEO audits, technical SEO, Core Web Vitals, sitemap/indexability, schema markup, local SEO, Google Business Profile, GEO/AEO, AI Overviews, content quality, image SEO, backlinks, ecommerce SEO, programmatic SEO, and prioritized SEO action plans.
---

# SEO Codex

Use this as a universal SEO router.

## Audit Flow

1. Detect site type: SaaS, local service, ecommerce, publisher, agency, or other.
2. Check crawlability and indexability: robots, sitemap, canonical, redirects, status codes.
3. Review on-page basics: title, meta description, H structure, internal links, image alt text.
4. Assess content quality: intent match, E-E-A-T, freshness, thin/duplicate content.
5. Validate schema: correct type, required fields, no deprecated recommendations.
6. Check performance with Core Web Vitals, using INP rather than FID.
7. Assess AI search readiness: direct answers, sourceable claims, structured Q&A, entity clarity.
8. Prioritize fixes by impact and effort.

## Local SEO

For local businesses, include:

- Google Business Profile completeness.
- NAP consistency.
- Review velocity and response quality.
- Local landing page uniqueness.
- Service area and location page risks.
- LocalBusiness schema.

## Output Standard

Use this structure:

- SEO health score with category breakdown.
- Critical, high, medium, and low priority issues.
- Exact fix recommendations.
- Quick wins.
- 30/60/90 day plan when strategy is requested.

## Hard Rules

- Do not recommend `HowTo` schema for Google rich-result benefit.
- Treat commercial FAQ schema as useful for AI/LLM clarity, not guaranteed Google rich results.
- Warn at 30+ location pages; require strong uniqueness and business justification at 50+.
- Do not fabricate search volumes, rankings, or performance metrics.

## Source Notes

Distilled from `github.com/AgriciDaniel/claude-seo`.
