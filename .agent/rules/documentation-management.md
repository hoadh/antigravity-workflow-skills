# Project Documentation Management

## Roadmap & Changelog Maintenance

* **Project Roadmap** (`./docs/development-roadmap.md`): Living document tracking project phases, milestones, and progress
* **Project Changelog** (`./docs/project-changelog.md`): Detailed record of all significant changes, features, and fixes
* **System Architecture** (`./docs/system-architecture.md`): Technical architecture documentation
* **Code Standards** (`./docs/code-standards.md`): Coding standards and conventions

## Automatic Updates Required

* **After Feature Implementation**: Update roadmap progress status and changelog entries
* **After Major Milestones**: Review and adjust roadmap phases, update success metrics
* **After Bug Fixes**: Document fixes in changelog with severity and impact
* **After Security Updates**: Record security improvements and version updates
* **Weekly Reviews**: Update progress percentages and milestone statuses

## Documentation Triggers

Update these documents when:
* A development phase status changes (e.g., from "In Progress" to "Complete")
* Major features are implemented or released
* Significant bugs are resolved or security patches applied
* Project timeline or scope adjustments are made
* External dependencies or breaking changes occur

## Update Protocol

1. **Before Updates**: Always read current roadmap and changelog status
2. **During Updates**: Maintain version consistency and proper formatting
3. **After Updates**: Verify links, dates, and cross-references are accurate
4. **Quality Check**: Ensure updates align with actual implementation progress

## Report Output Convention (MANDATORY)

All reports MUST follow this naming convention:

* **Reports**: `./plans/reports/{type}-{YYMMDD}-{HHMM}-{slug}.md`
* **Plans**: `./plans/{YYMMDD}-{HHMM}-{slug}/`

| Token | Value | Example |
|---|---|---|
| `{type}` | Report category | See mapping table below |
| `{YYMMDD}` | Current date | `260225` |
| `{HHMM}` | Current time | `1430` |
| `{slug}` | Kebab-case task description | `fix-auth-token-expiry` |

### Skill → Report Type Mapping

| Report Type | Skill | When to use |
|---|---|---|
| `researcher` | research | Technical research, solution analysis |
| `scout` | scout | Codebase scouting, file discovery |
| `debugger` | debug / debugging | Bug investigation, root cause analysis |
| `tester` | test | Test execution, QA reports |
| `code-reviewer` | code-review | Code review, codebase audit |
| `brainstormer` | brainstorm | Brainstorm, ideation, architecture decisions |
| `cook` | cook | Implementation progress reports |

> **Fallback rule:** Each skill defines its own `## Report Output` section with default path. If `## Naming` is injected by hooks, use that pattern instead.

Rules:
* Always create `./plans/reports/` directory if it doesn't exist
* Research reports: ≤150 lines
* `plan.md` must include YAML frontmatter: title, description, status, priority, effort, branch, tags, created
* Each skill's `## Report Output` section specifies its report type and default path

## Plans

### Plan Location
Save plans in `./plans` directory: `plans/{YYMMDD}-{HHMM}-{slug}/`

### File Organization

```
plans/{YYMMDD}-{HHMM}-{slug}/
├── research/
│   ├── researcher-XX-{topic}.md        # ≤150 lines each
│   └── ...
├── reports/
│   ├── scout-{slug}.md
│   └── ...
├── plan.md                              # Overview (under 80 lines)
├── phase-01-{name}.md
├── phase-02-{name}.md
└── ...
```

### Overview Plan (plan.md)
* Keep generic and under 80 lines
* List each phase with status/progress
* Link to detailed phase files
* Key dependencies

### Phase Files (phase-XX-name.md)
Follow the `./docs/development-rules.md` file. Each phase file should contain:

* **Context Links** — Links to related reports, files, documentation
* **Overview** — Priority, current status, brief description
* **Key Insights** — Important findings from research, critical considerations
* **Requirements** — Functional and non-functional requirements
* **Architecture** — System design, component interactions, data flow
* **Related Code Files** — Files to modify, create, delete
* **Implementation Steps** — Detailed, numbered steps with specific instructions
* **Todo List** — Checkbox list for tracking
* **Success Criteria** — Definition of done, validation methods
* **Risk Assessment** — Potential issues, mitigation strategies
* **Security Considerations** — Auth/authorization, data protection
* **Next Steps** — Dependencies, follow-up tasks
