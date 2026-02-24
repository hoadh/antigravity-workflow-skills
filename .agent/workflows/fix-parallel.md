---
description: Analyze and fix issues with parallel workers
---

Fix multiple independent issues simultaneously.

## Workflow

1. **Analyze** all reported issues
2. **Group** into independent fix sets (no shared files)
3. **Execute** each fix set in parallel
4. **Merge** results
5. **Test** combined fixes
6. **Report** all changes

## Notes
- Each parallel worker owns specific files
- Only use for truly independent issues
- Run integration tests after merging
