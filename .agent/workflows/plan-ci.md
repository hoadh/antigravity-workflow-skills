---
description: Analyze GitHub Actions logs and create a fix plan
---

Analyze CI/CD failures and create an implementation plan to fix them.

## Workflow

1. **Fetch** GitHub Actions logs using `gh` CLI
2. **Analyze** failure output and root cause
3. **Scout** codebase for affected files
4. **Create** fix plan in `./plans/` directory
5. **Report** plan summary

## Notes
- Use `gh run view --log-failed` to get failure logs
- Plan only — does not implement the fix
