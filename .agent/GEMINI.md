# GEMINI.md

## Role & Responsibilities

* Analyze user requirements, coordinate tasks, and ensure cohesive delivery of features that meet specifications and architectural standards
* Activate relevant skills from the skills catalog as needed during the process
* Follow strictly the development rules below
* Before planning or implementing, always read `./README.md` first for context

## Key Principles

* **YAGNI** — You Aren't Gonna Need It
* **KISS** — Keep It Simple, Stupid
* **DRY** — Don't Repeat Yourself

## Reports & Output

* Sacrifice grammar for concision when writing reports
* List any unresolved questions at the end, if any
* Ensure token efficiency while maintaining high quality

### Report Output Convention (MANDATORY)

All reports **MUST** be saved as Markdown files following this naming convention:

* **Reports path**: `./plans/reports/{type}-{YYMMDD}-{HHMM}-{slug}.md`
* **Plans path**: `./plans/{YYMMDD}-{HHMM}-{slug}/`

| Token | Value | Example |
|---|---|---|
| `{type}` | Report category | See mapping table below |
| `{YYMMDD}` | Current date | `260225` |
| `{HHMM}` | Current time | `1430` |
| `{slug}` | Kebab-case task description | `fix-auth-token-expiry` |

#### Skill → Report Type Mapping

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

**Plan directory structure:**
```
plans/{YYMMDD}-{HHMM}-{slug}/
├── research/researcher-XX-{topic}.md   # ≤150 lines each
├── reports/scout-{slug}.md
├── plan.md                              # Overview, under 80 lines, YAML frontmatter
└── phase-XX-{name}.md
```

**Rules:**
* Always create `./plans/reports/` directory if it doesn't exist
* Research reports must be ≤150 lines
* `plan.md` must include YAML frontmatter: title, description, status, priority, effort, branch, tags, created
* The `## Report Output` section in each skill and workflow specifies which report types to generate

## [IMPORTANT] Consider Modularization

* If a code file exceeds 200 lines of code, consider modularizing it
* Check existing modules before creating new
* Analyze logical separation boundaries (functions, classes, concerns)
* Use kebab-case naming with long descriptive names — file names should be self-documenting for LLM tools (Grep, Glob, Search)
* Write descriptive code comments
* After modularization, continue with main task
* When not to modularize: Markdown files, plain text files, bash scripts, configuration files, environment variables files, etc.

## Python Scripts (Skills)

When running Python scripts from `.agent/skills/`, use the venv Python interpreter:
* **Linux/macOS:** `.agent/skills/.venv/bin/python3 scripts/xxx.py`
* **Windows:** `.agent\skills\.venv\Scripts\python.exe scripts\xxx.py`

When scripts of skills fail, don't stop — try to fix them directly.

## Documentation Management

Keep all important docs in `./docs` folder:

```
./docs
├── project-overview-pdr.md
├── code-standards.md
├── codebase-summary.md
├── design-guidelines.md
├── deployment-guide.md
├── system-architecture.md
└── project-roadmap.md
```

---

## Development Rules

### General

* **File Naming**: Use kebab-case with meaningful names that describe the file's purpose — doesn't matter if long, LLMs should understand the purpose from the name alone
* **File Size Management**: Keep individual code files under 200 lines for optimal context management
  * Split large files into smaller, focused components/modules
  * Use composition over inheritance for complex widgets
  * Extract utility functions into separate modules
  * Create dedicated service classes for business logic
* Use `docs-seeker` skill for exploring latest docs of plugins/packages if needed
* Use `gh` command to interact with GitHub features if needed
* Use `psql` command to query Postgres database for debugging if needed
* Use `ai-multimodal` skill for describing details of images, videos, documents, etc.
* Use `sequential-thinking` skill and `debugging` skill for analyzing code, debugging, etc.
* Follow the codebase structure and code standards in `./docs` during implementation
* **Do not** simulate or mock the implementation — always implement real code

### Code Quality Guidelines

* Read and follow codebase structure and code standards in `./docs`
* Don't be too harsh on linting, but **make sure there are no syntax errors and code is compilable**
* Prioritize functionality and readability over strict style enforcement and code formatting
* Use reasonable code quality standards that enhance developer productivity
* Use try-catch error handling & cover security standards
* Review code after every implementation

### Pre-commit/Push Rules

* Run linting before commit
* Run tests before push (DO NOT ignore failed tests just to pass the build or CI)
* Keep commits focused on actual code changes
* **DO NOT** commit and push any confidential information (dotenv files, API keys, database credentials, etc.)
* Create clean, professional commit messages without AI references. Use conventional commit format.

### Code Implementation

* Write clean, readable, and maintainable code
* Follow established architectural patterns
* Implement features according to specifications
* Handle edge cases and error scenarios
* **DO NOT** create new enhanced files — update existing files directly

---

## Primary Workflow

### 1. Code Implementation
* Create an implementation plan with TODO tasks in `./plans` directory before starting
* When in planning phase, research different relevant technical topics in parallel and report back to create implementation plan
* Write clean, readable, and maintainable code
* Follow established architectural patterns
* Implement features according to specifications
* Handle edge cases and error scenarios
* **DO NOT** create new enhanced files — update existing files directly
* After creating or modifying code, run compile command/script to check for errors

### 2. Testing
* Write comprehensive unit tests
* Ensure high code coverage
* Test error scenarios
* Validate performance requirements
* Tests are critical — **DO NOT** ignore failing tests just to pass the build
* **DO NOT** use fake data, mocks, cheats, tricks, or temporary solutions just to pass the build
* Always fix failing tests and run tests again — only finish when all tests pass

### 3. Code Quality
* After implementation, review code for quality
* Follow coding standards and conventions
* Write self-documenting code
* Add meaningful comments for complex logic
* Optimize for performance and maintainability

### 4. Integration
* Follow the implementation plan
* Ensure seamless integration with existing code
* Follow API contracts precisely
* Maintain backward compatibility
* Document breaking changes
* Update docs in `./docs` directory if needed

### 5. Debugging
* When bugs or issues are reported, investigate root causes before fixing
* Read the analysis report and implement the fix
* Run tests and analyze the summary report
* If tests fail, fix them and repeat from Step 2

---

## Orchestration Protocol

### Sequential Chaining

Chain tasks when they have dependencies or require outputs from previous steps:
* **Planning → Implementation → Testing → Review**: Use for feature development
* **Research → Design → Code → Documentation**: Use for new system components
* Each step completes fully before the next begins
* Pass context and outputs between steps in the chain

### Parallel Execution

Execute multiple independent tasks simultaneously:
* **Code + Tests + Docs**: When implementing separate, non-conflicting components
* **Multiple Feature Branches**: Different tasks working on isolated features
* **Cross-platform Development**: iOS and Android specific implementations
* **Careful Coordination**: Ensure no file conflicts or shared resource contention
* **Merge Strategy**: Plan integration points before parallel execution begins

---

## Project Documentation Management

### Roadmap & Changelog Maintenance

* **Project Roadmap** (`./docs/development-roadmap.md`): Living document tracking project phases, milestones, and progress
* **Project Changelog** (`./docs/project-changelog.md`): Detailed record of all significant changes, features, and fixes
* **System Architecture** (`./docs/system-architecture.md`): Technical architecture documentation
* **Code Standards** (`./docs/code-standards.md`): Coding standards and conventions

### Automatic Updates Required

* **After Feature Implementation**: Update roadmap progress status and changelog entries
* **After Major Milestones**: Review and adjust roadmap phases, update success metrics
* **After Bug Fixes**: Document fixes in changelog with severity and impact
* **After Security Updates**: Record security improvements and version updates
* **Weekly Reviews**: Update progress percentages and milestone statuses

### Documentation Triggers

Update these documents when:
* A development phase status changes (e.g., from "In Progress" to "Complete")
* Major features are implemented or released
* Significant bugs are resolved or security patches applied
* Project timeline or scope adjustments are made
* External dependencies or breaking changes occur

### Update Protocol

1. **Before Updates**: Always read current roadmap and changelog status
2. **During Updates**: Maintain version consistency and proper formatting
3. **After Updates**: Verify links, dates, and cross-references are accurate
4. **Quality Check**: Ensure updates align with actual implementation progress

### Plans

#### Plan Location
Save plans in `./plans` directory: `plans/{YYMMDD}-{HHMM}-{slug}/`

#### File Organization

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

#### Overview Plan (plan.md)
* Keep generic and under 80 lines
* List each phase with status/progress
* Link to detailed phase files
* Key dependencies

#### Phase Files (phase-XX-name.md)
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
