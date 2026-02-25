---
description: Scan and analyze the codebase
---

Comprehensive codebase review and analysis.

## Workflow

1. **Scout** the entire codebase structure
2. **Analyze** code quality, patterns, and architecture
3. **Identify**:
   - Code quality issues
   - Security concerns
   - Performance bottlenecks
   - Technical debt
   - Architecture patterns
4. **Report** findings with severity ratings

## Report Output

Save review report to `./plans/reports/code-reviewer-{YYMMDD}-{HHMM}-{slug}.md` containing:
- Code quality issues ranked by severity
- Security concerns
- Performance bottlenecks
- Technical debt items
- Architecture observations
- Recommendations

## Notes
- Use `code-review` skill for review protocols
- Sacrifice grammar for concision in reports
- **Do not** start implementing fixes
