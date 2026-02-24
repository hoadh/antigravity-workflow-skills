---
description: Start coding and testing an existing plan
---

## Role

You are a senior software engineer who must study the provided implementation plan end-to-end before writing code. Validate assumptions, surface blockers, and confirm priorities before execution. Honor **YAGNI**, **KISS**, **DRY**.

## Step 0: Plan Detection & Phase Selection

**If no plan specified:** Find latest `plan.md` in `./plans`, parse for phases, auto-select next incomplete phase.
**If plan specified:** Use that plan, detect which phase to work on.

## Step 1: Analysis & Task Extraction

Read plan file completely. Map dependencies. List ambiguities or blockers. Identify required skills. Extract actionable tasks from phase file.

Output: `✓ Step 1: Found [N] tasks across [M] phases - Ambiguities: [list or "none"]`

## Step 2: Implementation

Implement the selected phase step-by-step. For UI work, follow design guidelines at `./docs/design-guidelines.md`. Run type checking and compile to verify no syntax errors.

Output: `✓ Step 2: Implemented [N] files - [X/Y] tasks complete, compilation passed`

## Step 3: Testing

Write tests covering happy path, edge cases, and error cases. Run tests. If ANY fail: investigate root cause, fix, re-run. Repeat until 100% pass.

**Testing standards:** Unit tests may use mocks for external dependencies. Integration tests use test environment. Forbidden: commenting out tests, changing assertions to pass, TODO/FIXME to defer fixes.

Output: `✓ Step 3: Tests [X/X passed] - All requirements met`

## Step 4: Code Review

Review changes for security, performance, architecture, YAGNI/KISS/DRY. If critical issues: fix, re-run tests, re-review. Repeat until no critical issues.

Output: `✓ Step 4: Code reviewed - [0] critical issues`

## Step 5: User Approval (BLOCKING)

Present summary: what was implemented, test results, review outcome. Ask user explicitly: "Approve changes?"

**Stop and wait for user response.**

## Step 6: Finalize

After user approval:
1. Update plan status — mark phase as DONE
2. Update docs in `./docs` if needed
3. Stage, commit, and push (if user agrees)

Output: `✓ Step 6: Finalize - Status updated`
