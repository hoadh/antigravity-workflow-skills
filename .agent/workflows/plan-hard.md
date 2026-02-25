---
description: Research, analyze, and create an implementation plan
---

Thorough planning with research phase.

## Workflow

1. **Research** — investigate approaches in parallel (max 5 searches)
2. **Scout** codebase for relevant files, read `codebase-summary.md`, `code-standards.md`, `system-architecture.md`
3. **Analyze** research reports and codebase context
4. **Create** comprehensive plan in `./plans/` directory:
   - `plan.md` overview (under 80 lines) with YAML frontmatter (title, description, status, priority, effort, branch, tags, created)
   - `phase-XX-name.md` detailed phase files
5. **Report** plan summary

## Report Output

Save all outputs using this naming convention:

```
plans/{YYMMDD}-{HHMM}-{slug}/
├── research/
│   ├── researcher-01-{topic}.md    # ≤150 lines each
│   └── ...
├── reports/
│   └── scout-{slug}.md
├── plan.md
├── phase-01-{name}.md
└── ...
```

- `{YYMMDD}` = current date (e.g., `260225`)
- `{HHMM}` = current time (e.g., `1430`)
- `{slug}` = kebab-case task description
- Research reports: ≤150 lines, all citations included

## Notes
- Full research before planning
- Most thorough planning approach
- **Do not** start implementing
