---
title: "Hybrid Protect Custom Content on Setup Update"
description: "Refactor setup.sh to preserve custom skills, workflows & GEMINI.md using rsync + backup + interactive prompt"
status: in-progress
priority: high
effort: small
branch: feat/protect-custom-content
tags: [setup, shell, dx]
created: 2026-02-26
---

# Plan: Bảo vệ Custom Content khi Update

## Context

- Brainstorm: `plans/reports/brainstormer-260226-0117-protect-custom-content-on-update.md`
- Target file: `setup.sh` (113 lines)
- Phương án: **Hybrid** — rsync + backup + prompt

## Phases

### Phase 1: Refactor `setup.sh` — Core Logic
**File:** `phase-01-refactor-setup-sh.md`
**Status:** ✅ Done
- Extract helper functions (backup, sync, GEMINI.md handling)
- Replace `rm -rf` + `cp -r` bằng safe sync logic
- Apply cho cả Global scope (L29-38) và Project scope (L78-84)

### Phase 2: Update Documentation
**File:** `phase-02-update-docs.md`
**Status:** ⬜ Planned
- Update README.md giải thích behavior mới
- Thêm hướng dẫn custom skills/workflows convention

## Validation Results (260226)

| # | Concern | Decision |
|---|---------|----------|
| 1 | rsync fallback | Thêm `command -v rsync` check, fallback `cp -r` |
| 2 | Non-interactive mode | Không cần, script chỉ dùng manual |
| 3 | Custom file detection | Detect cả dirs + standalone files (đặc biệt workflows) |
| 4 | Overwrite repo files | Backup đủ, user nên tạo skill riêng |
| 5 | Backup atomicity | Refactor `create_backup()` nhận multiple paths |
| 6 | File size >200 lines | Giữ 1 file, bash scripts exempt |

## Dependencies

- `rsync` (có sẵn trên macOS/Linux, fallback `cp -r` nếu không có)
- `diff` (có sẵn)

## Risks

- Backup tích lũy → rotation policy giữ 3 bản
- File deprecated không bị xóa → chấp nhận được
- rsync không có → fallback cp -r với warning
