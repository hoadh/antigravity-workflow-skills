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

## Plans

### Plan Location
Save plans in `./plans` directory with timestamp and descriptive name.

**Example:** `plans/251101-1505-authentication-and-profile-implementation/`

### File Organization

```
plans/
├── 20251101-1505-authentication-and-profile-implementation/
    ├── research/
    │   ├── researcher-XX-report.md
    │   └── ...
│   ├── reports/
│   │   ├── scout-report.md
│   │   ├── researcher-report.md
│   │   └── ...
│   ├── plan.md                                # Overview access point
│   ├── phase-01-setup-environment.md          # Setup environment
│   ├── phase-02-implement-database.md         # Database models
│   ├── phase-03-implement-api-endpoints.md    # API endpoints
│   ├── phase-04-implement-ui-components.md    # UI components
│   ├── phase-05-implement-authentication.md   # Auth & authorization
│   ├── phase-06-implement-profile.md          # Profile page
│   └── phase-07-write-tests.md                # Tests
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
