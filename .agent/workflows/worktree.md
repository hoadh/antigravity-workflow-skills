---
description: Create isolated git worktree for parallel development
---

## Purpose

Create an isolated git worktree for parallel feature development.

## Workflow

### Step 1: Gather Info
- Detect repository type (monorepo vs standalone)
- Identify base branch
- Find existing `.env*` files

### Step 2: Determine Branch Type
Detect prefix from user's description:
- "fix", "bug", "error" → `fix/`
- "refactor", "restructure" → `refactor/`
- "docs", "documentation" → `docs/`
- "test", "spec" → `test/`
- "chore", "cleanup" → `chore/`
- "perf", "performance" → `perf/`
- Default → `feat/`

### Step 3: Convert Description to Slug
- Remove filler words, kebab-case, max 50 chars
- Example: "add authentication system" → `add-auth`

### Step 4: Create Worktree
```bash
git worktree add ../worktrees/{repo}-{slug} -b {prefix}/{slug}
```

### Step 5: Copy Environment Files
Ask which `.env*` files to copy to the new worktree.

## Commands

| Command | Description |
|---------|-------------|
| `git worktree add` | Create new worktree |
| `git worktree remove` | Remove worktree and branch |
| `git worktree list` | List existing worktrees |
