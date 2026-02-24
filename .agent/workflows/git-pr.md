---
description: Create a pull request
---

## Workflow

1. **Check** current branch and uncommitted changes
2. **Push** branch to remote if needed
3. **Analyze** all commits since branching from main
4. **Draft** PR title (under 70 chars) and description
5. **Create** PR using `gh pr create`
6. **Report** PR URL

## Notes
- PR body includes: Summary (bullet points), Test plan
- Uses `gh` CLI for GitHub operations
- Analyzes ALL commits on branch, not just latest
