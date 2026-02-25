---
description: Run tests locally and analyze the summary report
---

## Purpose

Run the project's test suite and analyze results.

## Workflow

1. **Identify** the test command from `package.json`, `Makefile`, or project configuration
2. **Run** the full test suite
3. **Analyze** the output:
   * Total tests, passed, failed, skipped
   * Failure details with stack traces
   * Test coverage if available
4. **Report** findings:
   * Summary of pass/fail status
   * Root cause analysis for any failures
   * Recommendations for fixes

## Report Output

Save test summary to `./plans/reports/tester-{YYMMDD}-{HHMM}-{slug}.md` containing:
- Pass/fail summary (total, passed, failed, skipped)
- Failure details with root cause analysis
- Coverage metrics if available
- Recommendations for fixes

## Important Notes

* **Do not** start implementing fixes — only run and analyze
* Activate relevant skills from the catalog as needed
