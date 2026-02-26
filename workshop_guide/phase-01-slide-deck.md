# Phase 01: Slide Deck

## Tổng quan
- **Số slides**: ~25 slides
- **Công cụ**: Google Slides / Marp (Markdown → Slides)
- **Theme**: Dark mode (matching flowchart design)

---

## Slide 1 — Title
```
🚀 AI-Powered Development Workshop
─────────────────────────────────
Antigravity Workflow Skills cho Flutter Dev Team

Ngày: [DD/MM/YYYY]
Trainer: [Tên]
```

## Slide 2 — Agenda
```
Workshop 3 tiếng

1. Intro & Overview                    10'
2. UC1: New Project (/bootstrap)       25'
3. UC2: Join Existing (/docs:init)     15'
4. UC3: Build Feature                  45'
   /brainstorm → /plan → /code
   ☕ Break 10'
5. UC4: Fix Something                  25'
   /debug → /fix
6. UC5: Team Standards                 15'
7. Hands-on Practice                   45'
8. Q&A & Next Steps                    10'
```

## Slide 3 — Khảo sát nhanh
```
❓ Bạn mất bao nhiêu % thời gian cho:

• Viết boilerplate code?        ____%
• Debug & fix bugs?             ____%
• Đọc hiểu code người khác?    ____%
• Viết docs & tests?            ____%
• Thực sự code feature mới?    ____%

→ Mục tiêu: Tăng % thời gian cho feature mới
```

## Slide 4 — AI Agent ≠ Autocomplete
```
┌─────────────────────┬──────────────────────┐
│   Autocomplete       │   AI Agent           │
│   (Copilot)          │   (Antigravity)      │
├─────────────────────┼──────────────────────┤
│ Gợi ý từng dòng     │ Hiểu cả project      │
│ Reactive             │ Proactive            │
│ Không có context     │ Đọc docs, rules      │
│ Chỉ code             │ Plan + Code + Test   │
│ Không follow rules   │ Follow team rules    │
└─────────────────────┴──────────────────────┘

AI Agent = đồng đội biết đọc docs, follow rules, và hỏi ngược lại
```

## Slide 5 — Architecture: 3 Tầng
```
┌──────────────────────────────────────┐
│         RULES (Always-on)            │
│  Quy tắc dev, coding standards,     │
│  orchestration protocol              │
├──────────────────────────────────────┤
│        WORKFLOWS (User-triggered)    │
│  /bootstrap /plan /code /fix /debug  │
│  /brainstorm /docs:init /docs:update │
├──────────────────────────────────────┤
│         SKILLS (Auto-activated)      │
│  flutter, testing, debugging,        │
│  code-review, planning, ...          │
└──────────────────────────────────────┘

Rules:     Luôn active → định hướng agent
Workflows: Bạn gọi    → agent thực thi flow
Skills:    Agent tự chọn → công cụ chuyên môn
```

## Slide 6 — Decision Tree (Flowchart)
```
Dùng hình flowchart đã có (Screenshot 2026-02-26)

"What do you want?" → 7 nhánh chính

Highlight 5 UC sẽ học hôm nay:
1. New project? → /bootstrap
2. Join existing? → /docs:init
3. Build feature? → /brainstorm → /plan → /code
4. Fix something? → /debug → /fix
5. Team standards → /docs:update
```

## Slide 7 — Nguyên tắc vàng
```
Agent follow 3 nguyên tắc:

🎯 YAGNI — Chỉ code cái cần thiết
💋 KISS  — Giữ đơn giản
🔄 DRY   — Không lặp code

→ Agent không over-engineer
→ Agent hỏi clarify trước khi làm
→ Output chất lượng phụ thuộc vào input của BẠN
```

---

## Slide 8 — UC1: New Project
```
Use Case 1: "Tôi muốn tạo project mới"

/bootstrap "Flutter todo app with Firebase"

Agent sẽ:
1. Hỏi clarify requirements
2. Research tech stack
3. Tạo implementation plan
4. Setup project structure
5. Implement code
6. Viết tests
7. Review code
8. Tạo docs
9. Hướng dẫn onboarding

→ LIVE DEMO 🎬
```

## Slide 9 — UC1: Bootstrap Flow
```
/bootstrap
    │
    ├─ 1. Clarify requirements (hỏi ngược)
    ├─ 2. Research tech stack
    ├─ 3. Planning (tạo plan.md)
    ├─ 4. Wireframe (optional)
    ├─ 5. Implementation
    ├─ 6. Testing
    ├─ 7. Code review
    ├─ 8. Documentation (auto-generate docs/)
    └─ 9. Onboarding (setup env, API keys)

⏱️ Demo: tạo Flutter todo app từ đầu
```

## Slide 10 — UC2: Join Existing
```
Use Case 2: "Tôi vừa join project, không biết gì"

Bước 1: /docs:init
→ Agent scan toàn bộ codebase
→ Auto-generate documentation:
  • project-overview-pdr.md
  • codebase-summary.md
  • code-standards.md
  • system-architecture.md
  • project-roadmap.md

Bước 2: /scout "Find authentication logic"
→ Agent tìm files liên quan

→ LIVE DEMO 🎬
```

## Slide 11 — UC3: Build Feature (Overview)
```
Use Case 3: "Tôi muốn thêm feature mới"

Flow: /brainstorm → /plan → /code @plan.md

┌─────────┐    ┌──────┐    ┌──────────────┐
│brainstorm│ →  │ plan │ →  │ code @plan.md│
│  Ý tưởng │    │Kế hoạch│   │  Implement   │
└─────────┘    └──────┘    └──────────────┘

3 bước = từ ý tưởng → code chạy được
```

## Slide 12 — UC3: Brainstorm
```
/brainstorm "Thêm Profile screen với avatar upload"

Agent sẽ:
1. Discovery — hỏi clarify
2. Research — tìm best practices
3. Analysis — so sánh approaches
4. Debate — challenge ý tưởng
5. Consensus — đồng thuận giải pháp
6. Document — viết brainstorm report

Output: plans/reports/brainstormer-*.md

→ Agent KHÔNG code, chỉ tư vấn
→ LIVE DEMO 🎬
```

## Slide 13 — UC3: Plan
```
/plan "Implement profile screen based on brainstorm"

Agent sẽ:
1. Analyze task complexity
2. Research (nếu complex)
3. Scout codebase
4. Tạo plan structure:

plans/260226-1409-profile-screen/
├── research/researcher-01-*.md
├── plan.md          ← overview (≤80 dòng)
├── phase-01-*.md    ← detail từng phase
└── phase-02-*.md

→ Agent KHÔNG code, chỉ lập kế hoạch
→ LIVE DEMO 🎬
```

## Slide 14 — UC3: Code
```
/code @plan.md

Agent sẽ (6 bước):
1. Plan Detection — tìm plan, chọn phase
2. Analysis — đọc plan, map dependencies
3. Implementation — code theo plan
4. Testing — viết test, chạy test
5. Code Review — review code quality
6. User Approval — hỏi approve trước commit

→ Agent follow plan, KHÔNG code lung tung
→ Fail test = fix + re-test (không bỏ qua)
→ LIVE DEMO 🎬
```

## Slide 15 — UC4: Fix Something (Overview)
```
Use Case 4: "App bị lỗi, cần sửa"

┌────────────────────────────────────────┐
│ Know issue?                            │
│                                        │
│ YES → /fix "mô tả bug"                │
│        (fix trực tiếp)                 │
│                                        │
│ NO  → /debug "mô tả triệu chứng"     │
│        (điều tra trước)                │
│        → Found → /fix                  │
└────────────────────────────────────────┘
```

## Slide 16 — UC4: Debug
```
/debug "Avatar không hiển thị trên Android"

Agent sẽ:
1. Reproduce — cố tái hiện lỗi
2. Investigate — trace stack, check git diff
3. Analyze — tìm root cause
4. Report — viết debug report:
   • Root cause + evidence
   • Affected files
   • Recommended fix
   • Risk assessment

Output: plans/reports/debugger-*.md

→ Agent KHÔNG fix, chỉ điều tra
→ LIVE DEMO 🎬
```

## Slide 17 — UC4: Fix
```
/fix "Avatar không hiển thị do sai image path"

Agent routing thông minh (8 loại):
A) Type errors     → focus type checking
B) UI/UX issues    → focus design
C) CI/CD issues    → analyze pipeline
D) Test failures   → run + fix tests
E) Log analysis    → trace errors
F) Multiple issues → parallel fix
G) Complex issues  → research → plan → fix
H) Simple/Quick    → direct fix

→ Auto-detect loại issue, chọn strategy phù hợp
→ LIVE DEMO 🎬
```

## Slide 18 — UC5: Team Standards
```
Use Case 5: "Chuẩn hóa quy trình team"

/docs:update — Cập nhật docs theo code changes
• Scan codebase mới
• Diff với docs hiện tại
• Update từng file docs
• Validate references

Quy trình team chuẩn:
┌──────┐  ┌──────┐  ┌──────┐  ┌────────┐
│ Plan │→ │ Code │→ │ Test │→ │ Review │→ Merge
└──────┘  └──────┘  └──────┘  └────────┘
```

## Slide 19 — Rules: Sức Mạnh Thầm Lặng
```
Rules = Quy tắc luôn active cho agent

📁 .agent/rules/
├── project-instructions.md    ← hành vi chung
├── development-rules.md       ← coding standards
├── orchestration-protocol.md  ← cách agent delegate
└── documentation-management.md ← cách quản lý docs

Tại sao quan trọng?
→ Mọi người dùng cùng rules = output nhất quán
→ Agent biết coding standards của team
→ Không cần nhắc lại mỗi lần dùng
```

## Slide 20 — Coding Level
```
/coding-level → Set trình độ cho agent

Level 0: ELI5      — giải thích như cho trẻ 5 tuổi
Level 1: Junior     — giải thích kỹ, có ví dụ
Level 2: Mid        — balance giữa detail và speed
Level 3: Senior     — tối giản, focus output
Level 4: Lead       — high-level, architecture focus
Level 5: God mode   — code only, không giải thích

→ Team thống nhất level 2-3 cho daily work
→ Junior có thể set level 1 khi cần học thêm
```

## Slide 21 — Hands-on Time!
```
⏱️ 45 phút thực hành

Bài tập 1 (15'): Setup & Explore
→ /coding-level, /scout, /ask

Bài tập 2 (20'): Build Feature
→ /brainstorm → /plan → /code

Bài tập 3 (10'): Fix Bug
→ /debug → /fix

💡 Junior: focus bài 1-2
💡 Senior: challenge bài 3 + explore thêm
```

## Slide 22 — Quy Trình Team Chuẩn
```
Từ hôm nay, mọi feature phải qua:

1. /brainstorm  → Explore giải pháp (optional)
2. /plan        → Tạo implementation plan
3. /code        → Code theo plan
4. /fix + test  → Fix bugs + verify
5. /docs:update → Cập nhật docs
6. Code review  → Review trước merge

Commit: conventional format (feat:, fix:, docs:)
Không skip failing tests!
```

## Slide 23 — Tips & Tricks
```
🎯 Mô tả rõ ràng = Output tốt hơn
   ❌ "fix bug"
   ✅ "fix: Avatar image not loading on Android
       due to incorrect asset path in pubspec.yaml"

📋 Review plan trước khi code
   → Catch sai hướng sớm, tiết kiệm thời gian

🔍 Dùng /scout khi cần tìm code
   → Nhanh hơn grep/search manual

🚫 Không skip test failures
   → Agent sẽ hỗ trợ fix, không bỏ qua
```

## Slide 24 — Resources
```
📦 Repository: github.com/hoadh/antigravity-workflow-skills
📖 Docs: .agent/README.md
📋 Cheat Sheet: [phát cho mỗi người]
🖼️ Flowchart: Decision tree (hình đã chia sẻ)

Homework (tuần này):
• Dùng /plan + /code cho ít nhất 1 feature
• Dùng /fix cho ít nhất 1 bug

Follow-up: 1 tuần sau → review kết quả
```

## Slide 25 — Q&A
```
❓ Câu hỏi?

Liên hệ: [trainer contact]
```
