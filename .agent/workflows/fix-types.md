---
description: Fix type errors
---

Resolve TypeScript/type-checking errors.

## Workflow

1. **Run** type checker (`tsc --noEmit` or equivalent)
2. **Analyze** type errors
3. **Fix** each error with proper types (no `any`)
4. **Re-run** type checker
5. **Repeat** until zero errors
6. **Report** summary

## Notes
- Prefer proper types over `any` or type assertions
- Fix underlying type issues, not just suppress errors
