# Phase 05: Cheat Sheet

In 1 trang A4 (2 mặt), phát cho mỗi học viên.

---

## MẶT TRƯỚC

```
╔═══════════════════════════════════════════════════════════╗
║           AI WORKFLOW CHEAT SHEET                         ║
║           Antigravity Workflow Skills                     ║
╠═══════════════════════════════════════════════════════════╣
║                                                           ║
║  🎯 5 USE CASES CHÍNH                                    ║
║                                                           ║
║  ① New Project                                            ║
║     /bootstrap "mô tả project"                           ║
║     → Tạo project mới từ đầu (9 bước tự động)           ║
║                                                           ║
║  ② Join Existing Project                                  ║
║     /docs:init          → Scan codebase, tạo docs        ║
║     /scout "keyword"    → Tìm files liên quan            ║
║                                                           ║
║  ③ Build Feature                                          ║
║     /brainstorm "ý tưởng"  → Explore giải pháp           ║
║     /plan "feature"        → Tạo implementation plan     ║
║     /code @plan.md         → Code theo plan              ║
║                                                           ║
║  ④ Fix Something                                          ║
║     /debug "triệu chứng"  → Điều tra root cause         ║
║     /fix "mô tả bug"      → Phân tích & sửa bug         ║
║                                                           ║
║  ⑤ Team Standards                                         ║
║     /docs:update           → Cập nhật docs theo code     ║
║     /coding-level          → Set trình độ agent output   ║
║                                                           ║
╠═══════════════════════════════════════════════════════════╣
║                                                           ║
║  📋 FLOW CHUẨN CHO MỌI FEATURE                          ║
║                                                           ║
║  /brainstorm → /plan → /code → /fix → /docs:update      ║
║   (optional)   (bắt buộc)                                ║
║                                                           ║
╠═══════════════════════════════════════════════════════════╣
║                                                           ║
║  🔧 WORKFLOWS BỔ TRỢ                                    ║
║                                                           ║
║  /ask "câu hỏi"       → Hỏi đáp kỹ thuật               ║
║  /scout "keyword"      → Tìm kiếm trong codebase        ║
║  /git:cm               → Commit chuẩn conventional       ║
║  /git:cp               → Commit + Push                   ║
║  /watzup               → Xem thay đổi gần đây           ║
║                                                           ║
╚═══════════════════════════════════════════════════════════╝
```

---

## MẶT SAU

```
╔═══════════════════════════════════════════════════════════╗
║           TIPS & BEST PRACTICES                           ║
╠═══════════════════════════════════════════════════════════╣
║                                                           ║
║  ✅ NÊN LÀM                                              ║
║                                                           ║
║  • Mô tả rõ ràng, chi tiết                               ║
║    ✅ /fix "Avatar không hiển thị trên Android do          ║
║       thiếu INTERNET permission trong AndroidManifest"    ║
║    ❌ /fix "fix bug"                                      ║
║                                                           ║
║  • Review plan trước khi /code                            ║
║    → Catch sai hướng sớm = tiết kiệm thời gian          ║
║                                                           ║
║  • Trả lời câu hỏi clarify của agent                     ║
║    → Agent hỏi = nó cần thêm context                     ║
║                                                           ║
║  • Dùng /brainstorm khi chưa biết approach                ║
║    → Explore trước, code sau                              ║
║                                                           ║
╠═══════════════════════════════════════════════════════════╣
║                                                           ║
║  ❌ KHÔNG NÊN                                             ║
║                                                           ║
║  • Skip test failures (agent sẽ fix, không bỏ qua)       ║
║  • Code không có plan (dễ lạc hướng)                      ║
║  • Mô tả mơ hồ (output sẽ mơ hồ theo)                   ║
║  • Approve mà không review (luôn đọc trước khi OK)       ║
║                                                           ║
╠═══════════════════════════════════════════════════════════╣
║                                                           ║
║  🏗️ ARCHITECTURE — 3 TẦNG                                ║
║                                                           ║
║  Rules     → Luôn active, định hướng agent               ║
║              (.agent/rules/*.md)                          ║
║                                                           ║
║  Workflows → Bạn gọi, agent thực thi flow                ║
║              (.agent/workflows/*.md)                      ║
║                                                           ║
║  Skills    → Agent tự chọn, công cụ chuyên môn           ║
║              (.agent/skills/*)                            ║
║                                                           ║
╠═══════════════════════════════════════════════════════════╣
║                                                           ║
║  📊 CODING LEVELS                                         ║
║                                                           ║
║  0: ELI5    — giải thích cho trẻ 5 tuổi                  ║
║  1: Junior  — giải thích kỹ, có ví dụ                    ║
║  2: Mid     — cân bằng (recommend cho team)              ║
║  3: Senior  — tối giản, focus output                     ║
║  4: Lead    — high-level, architecture                   ║
║  5: God     — code only, không giải thích                ║
║                                                           ║
╠═══════════════════════════════════════════════════════════╣
║                                                           ║
║  📁 OUTPUT STRUCTURE                                      ║
║                                                           ║
║  plans/                                                   ║
║  ├── 260226-1409-feature-name/                           ║
║  │   ├── plan.md              ← overview (≤80 dòng)     ║
║  │   ├── phase-01-setup.md    ← chi tiết từng phase     ║
║  │   └── research/            ← research reports        ║
║  ├── reports/                                             ║
║  │   ├── brainstormer-*.md    ← brainstorm output       ║
║  │   ├── debugger-*.md        ← debug report            ║
║  │   └── tester-*.md          ← test results            ║
║  └── templates/                                           ║
║                                                           ║
║  docs/                                                    ║
║  ├── codebase-summary.md      ← tóm tắt codebase       ║
║  ├── code-standards.md        ← coding standards        ║
║  ├── system-architecture.md   ← kiến trúc hệ thống     ║
║  └── project-roadmap.md       ← lộ trình dự án         ║
║                                                           ║
╚═══════════════════════════════════════════════════════════╝
```
