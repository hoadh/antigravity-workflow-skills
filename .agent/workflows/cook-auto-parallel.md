---
description: Plan parallel phases and execute with multiple workers
---

Create a parallel-executable plan and implement with concurrent workers.

## Workflow

1. **Analyze** the task
2. **Plan** with explicitly parallel phases
3. **Execute** independent phases simultaneously
4. **Merge** and verify integration
5. **Test** combined output
6. **Report** summary

## Notes
- Each worker owns specific files (no conflicts)
- Independent phases run simultaneously
- Reduces total implementation time for multi-component features
