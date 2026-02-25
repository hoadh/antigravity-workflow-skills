---
description: Use external tools to scout directories
---

Search the codebase using external agentic tools for broader coverage.

## Workflow

1. **Analyze** the search request
2. **Divide** codebase into logical sections
3. **Search** each section in parallel using available tools
4. **Compile** results into concise report

## Report Output

Save scout report to `./plans/reports/scout-{YYMMDD}-{HHMM}-{slug}.md`.

## Notes
- Prefer external tools (Gemini CLI) for larger context windows
- Fallback to standard search if external tools unavailable
- Quick search — not a full audit
