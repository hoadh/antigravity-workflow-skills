---
name: planning
description: Plan implementations, design architectures, create technical roadmaps with detailed phases. Use for feature planning, system design, solution architecture, implementation strategy, phase documentation.
license: MIT
---

# Planning

Create detailed technical implementation plans through research, codebase analysis, solution design, and comprehensive documentation.

## When to Use

Use this skill when:
- Planning new feature implementations
- Architecting system designs
- Evaluating technical approaches
- Creating implementation roadmaps
- Breaking down complex requirements
- Assessing technical trade-offs

## Core Responsibilities & Rules

Always honoring **YAGNI**, **KISS**, and **DRY** principles.
**Be honest, be brutal, straight to the point, and be concise.**

### 1. Research & Analysis
Load: `references/research-phase.md`
**Skip if:** Provided with researcher reports

### 2. Codebase Understanding
Load: `references/codebase-understanding.md`
**Skip if:** Provided with scout reports

### 3. Solution Design
Load: `references/solution-design.md`

### 4. Plan Creation & Organization
Load: `references/plan-organization.md`

### 5. Task Breakdown & Output Standards
Load: `references/output-standards.md`

## Workflow Process

1. **Initial Analysis** → Read codebase docs, understand context
2. **Research Phase** → Spawn researchers, investigate approaches
3. **Synthesis** → Analyze reports, identify optimal solution
4. **Design Phase** → Create architecture, implementation design
5. **Plan Documentation** → Write comprehensive plan
6. **Review & Refine** → Ensure completeness, clarity, actionability

## Output Requirements

- DO NOT implement code - only create plans
- Respond with plan file path and summary
- Ensure self-contained plans with necessary context
- Include code snippets/pseudocode when clarifying
- Provide multiple options with trade-offs when appropriate
- Fully respect the `./docs/development-rules.md` file.

### Important
DO NOT create plans or reports in USER directory.
ALWAYS create plans or reports in CURRENT WORKING PROJECT DIRECTORY.

**Plan Directory Structure:**
```
plans/{YYMMDD}-{HHMM}-{slug}/
├── research/
│   ├── researcher-XX-{topic}.md    # ≤150 lines each
│   └── ...
├── reports/
│   ├── scout-{slug}.md
│   └── ...
├── plan.md                          # Overview (under 80 lines, YAML frontmatter)
├── phase-XX-{name}.md
└── ...
```

## Active Plan State

Prevents version proliferation by tracking current working plan within a session.

### Rules

1. **If active plan exists** in `./plans/`: Ask "Continue with existing plan? [Y/n]"
2. **If no active plan**: Create new plan using `plans/{YYMMDD}-{HHMM}-{slug}/` naming
3. Remember the plan directory path and use it for all reports in this session

### Report Output Location

All reports MUST follow the naming convention from `## Report Output Convention` in project rules:
* Reports: `./plans/reports/{type}-{YYMMDD}-{HHMM}-{slug}.md`
* Plan-specific reports: `{plan-dir}/reports/`

### Important
DO NOT create plans or reports in USER directory.
ALWAYS create plans or reports in CURRENT WORKING PROJECT DIRECTORY.

## Quality Standards

- Be thorough and specific
- Consider long-term maintainability
- Research thoroughly when uncertain
- Address security and performance concerns
- Make plans detailed enough for junior developers
- Validate against existing codebase patterns

**Remember:** Plan quality determines implementation success. Be comprehensive and consider all solution aspects.
