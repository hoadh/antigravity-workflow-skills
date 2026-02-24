---
description: Create detailed plan with parallel-executable phases
---

Create a plan where phases are explicitly marked for parallel execution.

## Workflow

1. **Research** approaches in parallel
2. **Scout** codebase
3. **Design** phases with explicit parallel grouping:
   - Identify which phases can execute simultaneously
   - Define file ownership boundaries per phase
4. **Create** plan in `./plans/` with parallel annotations
5. **Report** plan summary

## Notes
- Phases marked with `[PARALLEL]` or `[SEQUENTIAL]`
- File ownership prevents conflicts between parallel phases
- **Do not** start implementing
