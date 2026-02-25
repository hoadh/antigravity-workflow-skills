---
description: Debug technical issues and provide solutions
---

## Purpose

Investigate reported issues, find root causes, and explain findings.

## Workflow

1. **Reproduce** — Attempt to reproduce the reported issue
2. **Investigate** — Use the `debugging` skill to systematically trace the root cause:
   * Read error messages and stack traces carefully
   * Check recent changes (git diff, recent commits)
   * Trace data flow to find where things go wrong
3. **Analyze** — Identify the root cause and explain it clearly
4. **Report** — Provide:
   * Root cause explanation
   * Affected files and components
   * Recommended fix approach
   * Risk assessment

## Report Output

Save debug analysis to `./plans/reports/debugger-{YYMMDD}-{HHMM}-{slug}.md` containing:
- Root cause analysis with evidence
- Affected files and components
- Recommended fix with implementation steps
- Risk assessment

## Important Notes

* **Do not** implement the fix automatically — only investigate and report
* Activate relevant skills from the catalog as needed
* Sacrifice grammar for concision in outputs
