---
description: Analyze GitHub Actions logs and fix CI issues
---

Analyze CI/CD pipeline failures and fix them.

## Workflow

1. **Fetch** GitHub Actions logs using `gh` CLI
2. **Analyze** failure output to identify root cause
3. **Search** codebase for affected files
4. **Implement** the fix
5. **Run** tests locally to verify
6. **Report** what was fixed and why

## Notes
- Use `gh run view --log-failed` to get failure logs
- Focus on root cause, not symptoms
