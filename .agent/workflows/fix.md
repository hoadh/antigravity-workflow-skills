---
description: Analyze and fix issues with intelligent routing
---

## Purpose

Analyze issues and route to the appropriate fix strategy.

## Decision Tree

### 1. Check for existing plan
* If markdown plan exists → follow the plan to implement the fix

### 2. Route by issue type

**A) Type Errors** (keywords: type, typescript, tsc, type error)
→ Focus on type checking and type fixes

**B) UI/UX Issues** (keywords: ui, ux, design, layout, style, visual, button, component, css, responsive)
→ Focus on UI/UX debugging and design fixes

**C) CI/CD Issues** (keywords: github actions, pipeline, ci/cd, workflow, deployment, build failed)
→ Analyze CI/CD logs, identify failure point, fix pipeline

**D) Test Failures** (keywords: test, spec, jest, vitest, failing test, test suite)
→ Run failing tests, identify root cause, fix

**E) Log Analysis** (keywords: logs, error logs, log file, stack trace)
→ Analyze log files, trace errors, fix root cause

**F) Multiple Independent Issues** (2+ unrelated issues in different areas)
→ Tackle issues in parallel, fixing each independently

**G) Complex Issues** (keywords: complex, architecture, refactor, major, system-wide, multiple components)
→ Research first, create a plan, then implement fix

**H) Simple/Quick Fixes** (default: small bug, single file, straightforward)
→ Direct fix with minimal overhead

## Process for Each Fix

1. **Investigate** — Reproduce the issue and gather evidence
2. **Diagnose** — Find root cause (use `debugging` skill for complex issues)
3. **Fix** — Implement the minimal fix addressing root cause
4. **Verify** — Run tests and confirm the fix works
5. **Review** — Check for regressions

## Notes

* If unclear, ask user for clarification before routing
* Can combine routes: e.g., multiple type errors + UI issue → parallel fix
* Always verify fixes with tests before claiming success
