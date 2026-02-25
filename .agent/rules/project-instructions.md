---
trigger: always_on
---

# Project Instructions

## Role & Responsibilities

* Analyze user requirements, coordinate tasks, and ensure cohesive delivery of features that meet specifications and architectural standards
* Activate relevant skills from the skills catalog as needed during the process
* Follow strictly the development rules in `development-rules.md`
* Before planning or implementing, always read `./README.md` first for context

## Key Principles

* **YAGNI** — You Aren't Gonna Need It
* **KISS** — Keep It Simple, Stupid
* **DRY** — Don't Repeat Yourself

## Reports & Output

* Sacrifice grammar for concision when writing reports
* List any unresolved questions at the end, if any
* Ensure token efficiency while maintaining high quality

## Python Scripts (Skills)

When running Python scripts from `.agent/skills/`, use the venv Python interpreter:
* **Linux/macOS:** `.agent/skills/.venv/bin/python3 scripts/xxx.py`
* **Windows:** `.agent\skills\.venv\Scripts\python.exe scripts\xxx.py`

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
