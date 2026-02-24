---
name: code-review
description: Use when completing tasks or major features requiring review, when receiving code review feedback (especially if unclear or technically questionable), or before making completion/success claims. Covers receiving feedback with technical rigor, requesting reviews, and verification gates requiring evidence before status claims.
---

# Code Review

Guide proper code review practices emphasizing technical rigor, evidence-based claims, and verification over performative responses.

## Overview

Code review requires three distinct practices:

1. **Receiving feedback** — Technical evaluation over performative agreement
2. **Requesting reviews** — Systematic code review process
3. **Verification gates** — Evidence before any completion claims

Each practice has specific triggers and protocols detailed in reference files.

## Core Principle

Always honoring **YAGNI**, **KISS**, and **DRY** principles.
**Be honest, be brutal, straight to the point, and be concise.**

**Technical correctness over social comfort.** Verify before implementing. Ask before assuming. Evidence before claims.

## When to Use This Skill

### Receiving Feedback
Trigger when:
- Receiving code review comments from any source
- Feedback seems unclear or technically questionable
- Multiple review items need prioritization
- External reviewer lacks full context
- Suggestion conflicts with existing decisions

**Reference:** `references/code-review-reception.md`

### Requesting Review
Trigger when:
- Completing major features or refactors
- Before merging to main branch
- Stuck and need fresh perspective
- After fixing complex bugs

**Reference:** `references/requesting-code-review.md`

### Verification Gates
Trigger when:
- About to claim tests pass, build succeeds, or work is complete
- Before committing, pushing, or creating PRs
- Moving to next task
- Any statement suggesting success/completion

**Reference:** `references/verification-before-completion.md`

## Quick Decision Tree

```
SITUATION?
│
├─ Received feedback
│  ├─ Unclear items? → STOP, ask for clarification first
│  ├─ From human partner? → Understand, then implement
│  └─ From external reviewer? → Verify technically before implementing
│
├─ Completed work
│  └─ Major feature/task? → Request code review
│
└─ About to claim status
   ├─ Have fresh verification? → State claim WITH evidence
   └─ No fresh verification? → RUN verification command first
```

## Receiving Feedback Protocol

### Response Pattern
READ → UNDERSTAND → VERIFY → EVALUATE → RESPOND → IMPLEMENT

### Key Rules
- No performative agreement: "You're absolutely right!", "Great point!", "Thanks for [anything]"
- No implementation before verification
- Restate requirement, ask questions, push back with technical reasoning, or just start working
- If unclear: STOP and ask for clarification on ALL unclear items first
- YAGNI check: search for usage before implementing suggested "proper" features

**Full protocol:** `references/code-review-reception.md`

## Requesting Review Protocol

### When to Request
- After major feature completion
- Before merge to main
- When stuck (fresh perspective)

### Process
1. Get git SHAs for the diff range
2. Review the changes against the plan/requirements
3. Act on feedback: Fix Critical immediately, Important before proceeding, note Minor for later

**Full protocol:** `references/requesting-code-review.md`

## Verification Gates Protocol

### The Iron Law
**NO COMPLETION CLAIMS WITHOUT FRESH VERIFICATION EVIDENCE**

### Gate Function
IDENTIFY command → RUN full command → READ output → VERIFY confirms claim → THEN claim

Skip any step = lying, not verifying

### Requirements
- Tests pass: Test output shows 0 failures
- Build succeeds: Build command exit 0
- Bug fixed: Test original symptom passes
- Requirements met: Line-by-line checklist verified

**Full protocol:** `references/verification-before-completion.md`

## Bottom Line

1. Technical rigor over social performance — No performative agreement
2. Systematic review processes
3. Evidence before claims — Verification gates always

Verify. Question. Then implement. Evidence. Then claim.
