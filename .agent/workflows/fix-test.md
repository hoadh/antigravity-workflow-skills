---
description: Run test suite and fix failing tests
---

Run tests, analyze failures, and fix them.

## Workflow

1. **Run** full test suite
2. **Analyze** failing tests (read error output, stack traces)
3. **Investigate** root cause using `debugging` skill
4. **Fix** the underlying issue (not just the test)
5. **Re-run** tests to verify
6. **Repeat** until all tests pass
7. **Report** summary

## Notes
- Fix the code, not the test (unless test is wrong)
- Never comment out tests or change assertions to pass
- Use `debugging` skill for systematic investigation
