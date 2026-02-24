---
description: Start coding and testing an existing plan automatically
---

Execute an implementation plan automatically without manual confirmation gates.

## Workflow

Same as `/code` workflow but:
- Skips user approval gate (Step 5)
- Auto-proceeds through all steps
- Still enforces test passing and code review quality

## Notes
- Tests must still pass — no shortcuts on quality
- Code review still runs — critical issues still block
- Use when you trust the plan and want uninterrupted execution
