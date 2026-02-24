---
name: repomix
description: Package entire code repositories into single AI-friendly files using Repomix. Use when packaging codebases for AI analysis, creating repository snapshots for LLM context, analyzing third-party libraries, preparing for security audits, or generating documentation context.
---

# Repomix

Pack repositories into single, AI-friendly files for LLM consumption.

## Quick Start

```bash
repomix                                    # Package current directory
repomix --style markdown                   # Markdown format
npx repomix --remote owner/repo            # Remote repository
repomix --include "src/**/*.ts" -o out.md  # Custom filters
```

## Common Use Cases

```bash
# Code review
repomix --include "src/**/*.ts" --remove-comments -o review.md

# Security audit
npx repomix --remote vendor/library --style xml -o audit.xml

# Bug investigation
repomix --include "src/auth/**,src/api/**" -o debug-context.xml
```

## References

- `references/configuration.md` - Config, include/exclude, output formats
- `references/usage-patterns.md` - AI analysis workflows, audit preparation
