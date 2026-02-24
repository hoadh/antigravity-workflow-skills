---
name: docs-seeker
description: Search technical documentation using scripts to detect query type, fetch from llms.txt sources, and analyze results. Use when needing topic-specific documentation, library/framework docs, GitHub repository analysis, or documentation discovery.
---

# Documentation Discovery

Script-first documentation discovery using llms.txt standard.

## Workflow

```bash
# 1. DETECT query type
node scripts/detect-topic.js "<query>"

# 2. FETCH documentation
node scripts/fetch-docs.js "<query>"

# 3. ANALYZE results (if multiple URLs)
cat llms.txt | node scripts/analyze-llms-txt.js -
```

Scripts handle URL construction, fallback chains, and error handling automatically.

## Scripts

- **`detect-topic.js`** - Classify query type, extract library + topic
- **`fetch-docs.js`** - Retrieve documentation with fallback chain
- **`analyze-llms-txt.js`** - Categorize URLs, recommend search strategy

## References

- `references/context7-patterns.md` - URL patterns, known repositories
- `references/errors.md` - Error handling, fallback strategies
- `references/advanced.md` - Edge cases, versioning
