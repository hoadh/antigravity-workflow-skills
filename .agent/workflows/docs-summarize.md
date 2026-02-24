---
description: Analyze the codebase and create a summary report
---

Analyze the codebase and respond with a summary report.

## Arguments

- Focused topics (default: all)
- Should scan codebase (default: false)

## Workflow

1. **Read** `docs/codebase-summary.md` as baseline
2. **Scan** codebase if requested (search relevant directories)
3. **Summarize** findings focused on specified topics
4. **Report** concise summary

## Notes
- Use `docs/` directory as source of truth
- Do not scan entire codebase unless explicitly requested
- **Do not** start implementing
