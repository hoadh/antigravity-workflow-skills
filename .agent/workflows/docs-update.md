---
description: Analyze the codebase and update documentation
---

## Phase 1: Codebase Scouting

1. Scan the codebase and calculate the number of files with LOC in each directory (skip credentials, cache or external modules directories, such as `.claude`, `.opencode`, `.git`, `tests`, `node_modules`, `__pycache__`, `secrets`, etc.)
2. Target directories **that actually exist** — adapt to project structure, don't hardcode paths
3. Activate `scout` skill to explore key source directories and gather detailed reports
4. Merge results into context summary

## Phase 1.5: Read Existing Documentation

1. Check LOC: `wc -l docs/*.md 2>/dev/null | sort -rn`
2. Read each existing doc file sequentially
3. For each doc, extract: purpose, key sections, areas needing update

## Phase 2: Documentation Update

Update existing documentation sequentially using the gathered context:
- `README.md`: Update README (keep under 300 lines)
- `docs/project-overview-pdr.md`: Update project overview and PDR
- `docs/codebase-summary.md`: Update codebase summary
- `docs/code-standards.md`: Update code standards
- `docs/system-architecture.md`: Update system architecture
- `docs/project-roadmap.md`: Update project roadmap
- `docs/deployment-guide.md` [optional]: Update if exists
- `docs/design-guidelines.md` [optional]: Update if exists

Use `docs/` directory as the source of truth for documentation.

## Phase 3: Size Check

After documentation update:
1. Run `wc -l docs/*.md 2>/dev/null | sort -rn` to check LOC
2. Max LOC per file: 800
3. For files exceeding limit:
   - Report which files exceed and by how much
   - Ask user: split now or accept as-is?

## Phase 4: Documentation Validation

Run validation to detect potential issues:
1. Check code references: verify `functionName()` and `ClassName` mentioned in docs exist in codebase
2. Check internal links: verify `[text](./path.md)` links point to existing files
3. Display warnings (non-blocking)

**IMPORTANT**: **Do not** start implementing code.
