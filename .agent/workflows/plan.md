---
description: Intelligent plan creation with prompt enhancement
---

## Your Mission

Create a detailed implementation plan for the given task.

## Pre-Creation Check

Before creating a new plan:
- Check if an active plan already exists in `./plans/`
- If active plan found: Ask user "Active plan found: {path}. Continue with this? [Y/n]"
- If no active plan: Proceed to create new plan

## Workflow

1. **Analyze** the given task and ask the user for more details if needed
2. **Assess complexity** to decide the planning depth:
   - Simple tasks → Quick plan (scout codebase, create plan directly)
   - Complex tasks → Deep plan (research, scout, analyze, then create plan)
3. **Research** — For complex tasks, research different relevant technical topics in parallel
4. **Scout** — Search the codebase for files needed to complete the task
5. **Create plan** — Use the `planning` skill to create the implementation plan
6. **Save** — Save the plan to `./plans/{date}-{slug}/` directory

## Plan Structure

```
plans/{date}-{slug}/
├── research/           # Research reports
├── reports/            # Scout/analysis reports
├── plan.md             # Overview (under 80 lines)
├── phase-01-*.md       # Detailed phase files
└── ...
```

## Important Notes

* Activate relevant skills from the catalog as needed
* Sacrifice grammar for concision in reports
* Ensure token efficiency while maintaining quality
* List unresolved questions at the end, if any
* **Do not** start implementing — only create the plan
