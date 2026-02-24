---
description: Execute parallel or sequential phases based on plan structure
---

Execute plan phases that can run in parallel simultaneously.

## Workflow

1. **Read plan** and identify all phases
2. **Analyze dependencies** between phases
3. **Group** independent phases for parallel execution
4. **Execute** parallel groups with file ownership boundaries
5. **Merge** results and verify integration
6. **Test** combined output
7. **Report** summary

## Notes
- Phases with shared file dependencies run sequentially
- Independent phases run in parallel
- Each parallel worker owns specific files to prevent conflicts
