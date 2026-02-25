---
description: Research, plan, and fix complex issues
---

Thorough investigation and fix for complex, system-wide issues.

## Workflow

1. **Research** the issue in depth
2. **Scout** codebase for all affected areas
3. **Create** a fix plan in `./plans/`
4. **Implement** the fix following the plan
5. **Test** comprehensively
6. **Review** code quality
7. **Report** findings and changes

## Report Output

Save investigation report to `./plans/reports/debugger-{YYMMDD}-{HHMM}-{slug}.md` before implementing.
Save test results to `./plans/reports/tester-{YYMMDD}-{HHMM}-{slug}.md` after testing.
If a fix plan is created, save to `plans/{YYMMDD}-{HHMM}-{slug}/` with standard plan structure.

## Notes
- For multi-component, architectural, or system-wide issues
- Creates a plan before fixing
- Full testing and review cycle
