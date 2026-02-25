---
description: Analyze the codebase and create initial documentation
---

## Phase 1: Codebase Scouting

1. Scan the codebase and calculate the number of files with LOC in each directory (skip credentials, cache or external modules directories, such as `.claude`, `.opencode`, `.git`, `tests`, `node_modules`, `__pycache__`, `secrets`, etc.)
2. Target directories **that actually exist** — adapt to project structure, don't hardcode paths
3. Activate `scout` skill to explore key source directories and gather detailed reports
4. Merge results into context summary

## Phase 2: Documentation Creation

Create initial documentation sequentially using the gathered context:
- `README.md`: Project overview (keep under 300 lines)
- `docs/project-overview-pdr.md`: Project overview and PDR (Product Development Requirements)
- `docs/codebase-summary.md`: Codebase summary
- `docs/code-standards.md`: Codebase structure and code standards
- `docs/system-architecture.md`: System architecture
- `docs/project-roadmap.md`: Project roadmap
- `docs/deployment-guide.md` [optional]: Deployment guide
- `docs/design-guidelines.md` [optional]: Design guidelines

Use `docs/` directory as the source of truth for documentation.

## Phase 3: Size Check

After documentation creation:
1. Run `wc -l docs/*.md 2>/dev/null | sort -rn` to check LOC
2. Max LOC per file: 800
3. For files exceeding limit:
   - Report which files exceed and by how much
   - Ask user: split now or accept as-is?

**IMPORTANT**: **Do not** start implementing code.
