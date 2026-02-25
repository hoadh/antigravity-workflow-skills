---
description: Analyze the codebase and create a summary report
---

Analyze the codebase, update `docs/codebase-summary.md`, and respond with a summary report.

## Arguments

- Focused topics (default: all)
- Should scan codebase (default: false)

## Workflow

1. **Read** `docs/codebase-summary.md` as baseline
2. **Scan** codebase if requested:
   - Activate `scout` skill to scan key source directories
   - Calculate files + LOC per directory (skip credentials, cache or external modules directories, such as `.claude`, `.opencode`, `.git`, `tests`, `node_modules`, `__pycache__`, `secrets`, etc.)
3. **Summarize** findings focused on specified topics
4. **Update** `docs/codebase-summary.md` with new findings
5. **Report** concise summary to user

## Notes
- Use `docs/` directory as source of truth
- Do not scan entire codebase unless explicitly requested
- **Do not** start implementing code
