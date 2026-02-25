---
description: Scout given directories to respond to the user's requests
---

## Purpose

Search the codebase for files needed to complete a task using fast, token-efficient exploration.

## Workflow

1. **Analyze** the user's request to determine what files/patterns to search for
2. **Divide** the codebase into logical sections for parallel searching
3. **Search** — Search the codebase in parallel across different directories:
   * Use file pattern matching (glob) for known file types
   * Use content search (grep) for specific code patterns
   * Focus on finding files relevant to the task — this is a quick search, not a full codebase audit
4. **Compile** — Gather all results into a concise report

## Report Output

Save scout report to `./plans/reports/scout-{YYMMDD}-{HHMM}-{slug}.md` containing:
* Discovered files grouped by relevance
* Key patterns and relationships found
* Sacrifice grammar for concision
* List any unresolved questions at the end
