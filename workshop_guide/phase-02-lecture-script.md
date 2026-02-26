# Phase 02: Script Bài Giảng

Script chi tiết cho trainer (bạn) — theo từng phần của workshop.

---

## Intro & Overview (10 phút)

### [Slide 1-2] Mở đầu (2')
> "Chào mọi người. Hôm nay mình sẽ cùng nhau học cách dùng AI Agent để tăng năng suất coding. Đây không phải autocomplete như Copilot — mà là một đồng đội AI biết đọc docs, follow rules, và hỏi ngược lại khi chưa rõ."

### [Slide 3] Khảo sát nhanh (2')
> "Trước tiên, mình muốn hỏi nhanh — mọi người ước tính mình mất bao nhiêu % thời gian cho boilerplate, debug, đọc code người khác? Ghi nhanh trên giấy."

*Đợi 30s, hỏi 1-2 người chia sẻ.*

> "Thường dev mất 60-70% thời gian cho những việc lặp lại. Mục tiêu hôm nay: giảm con số đó xuống."

### [Slide 4] AI Agent vs Autocomplete (2')
> "Copilot gợi ý từng dòng — reactive, không context. AI Agent thì khác: nó đọc cả project, hiểu rules, và chủ động hỏi khi cần. Giống một junior dev rất nhanh — bạn chỉ đạo, nó thực thi."

### [Slide 5-6] Architecture + Flowchart (3')
> "Hệ thống có 3 tầng: Rules luôn active, Workflows bạn gọi, Skills agent tự chọn."

*Chiếu flowchart decision tree.*

> "Đây là bản đồ tổng. Hôm nay ta sẽ đi qua 5 use cases chính — từ tạo project mới đến fix bug."

### [Slide 7] Nguyên tắc (1')
> "Agent follow YAGNI, KISS, DRY — giống team mình. Nó sẽ không over-engineer. Nhưng nhớ: output chất lượng phụ thuộc vào input của bạn. Mô tả càng rõ → kết quả càng tốt."

---

## UC1: New Project — /bootstrap (25 phút)

### [Slide 8-9] Giới thiệu (3')
> "Use case đầu tiên: tạo project mới từ đầu. Thay vì tự setup Flutter, tạo folders, config — ta gõ một lệnh."

> "Bootstrap có 9 bước: từ hỏi requirements → research → plan → code → test → review → docs. Giờ mình demo."

### Live Demo (20')

**Mở Antigravity IDE, gõ:**
```
/bootstrap Flutter todo app with local storage
```

**Trong khi demo, giải thích:**

> **Bước 1 — Clarify**: "Thấy không? Agent hỏi ngược — 'Bạn muốn UI style gì? Cần authentication không?' Nó không làm bừa."

> **Bước 2 — Research**: "Agent đang research Flutter best practices, so sánh các package quản lý state."

> **Bước 3 — Plan**: "Đây là plan.md — overview toàn bộ project. Mỗi phase là 1 file riêng. Mình review rồi approve."

> **Bước 5 — Implementation**: "Agent bắt đầu code. Thấy nó follow plan từng bước — không nhảy lung tung."

> **Bước 8 — Docs**: "Docs được auto-generate. Người join sau đọc cái này sẽ hiểu project ngay."

**Pause, hỏi class:**
> "Có câu hỏi gì về bootstrap không?"

**Key takeaway:**
> "Bootstrap tốt nhất cho project mới. Nó setup foundation chuẩn để team build tiếp."

---

## UC2: Join Existing — /docs:init (15 phút)

### [Slide 10] Giới thiệu (2')
> "Use case 2: bạn vừa join project, không biết gì. Thay vì mất 1-2 ngày đọc code — ta nhờ agent scan và tạo docs."

### Live Demo (12')

**Mở một Flutter project có sẵn (chưa có docs), gõ:**
```
/docs:init
```

**Giải thích:**

> **Phase 1 — Scan**: "Agent đang scan toàn bộ codebase — đếm files, LOC mỗi thư mục."

> **Phase 2 — Generate**: "Nó tạo ra 5-6 file docs: overview, codebase summary, code standards, architecture. Mình không cần viết gì."

> "Xong /docs:init, dùng /scout để tìm code cụ thể:"

```
/scout "Find all API service classes"
```

> "Scout tìm files liên quan — nhanh hơn grep manual."

**Key takeaway:**
> "Join project mới? /docs:init trước, đọc docs, rồi /scout khi cần tìm code cụ thể."

---

## UC3: Build Feature — /brainstorm → /plan → /code (45 phút)

### [Slide 11] Overview (2')
> "Use case quan trọng nhất: build feature mới. 3 bước: brainstorm ý tưởng → plan kế hoạch → code implement."

### Demo 1: /brainstorm (12')

**[Slide 12]**
```
/brainstorm "Thêm Profile screen với avatar upload cho Flutter app"
```

> **Discovery**: "Agent hỏi: 'Avatar lưu ở đâu? Firebase Storage hay local? Có cần crop không?' — nó clarify trước khi tư vấn."

> **Analysis**: "Nó so sánh 2-3 approaches — ví dụ: dùng image_picker vs camera plugin, lưu Firebase vs Supabase. Mỗi cái có pros/cons."

> **Debate**: "Nếu mình chọn approach mà agent thấy rủi ro — nó sẽ challenge. 'Cách này có issue X, bạn đã xem xét chưa?' Đây là điểm mạnh — nó dám nói thật."

> "Output là brainstorm report. Agent KHÔNG code — chỉ tư vấn."

**Pause:**
> "Brainstorm rất hữu ích khi chưa biết nên làm thế nào. Tiết kiệm thời gian research."

### Demo 2: /plan (12')

**[Slide 13]**
```
/plan "Implement profile screen based on brainstorm report"
```

> "Agent đọc brainstorm report, analyze complexity, rồi tạo plan."

> **Plan structure**: "Thấy không? plan.md overview dưới 80 dòng. Mỗi phase có file riêng: phase-01-setup.md, phase-02-ui.md..."

> **Phase detail**: "Mỗi phase có: requirements, implementation steps, todo list, success criteria. Rất chi tiết."

> "Review plan kỹ — đây là bước quan trọng nhất. Catch sai hướng ở đây tiết kiệm rất nhiều thời gian."

### Demo 3: /code (15')

**[Slide 14]**
```
/code @plan.md
```

> **Step 1 — Detection**: "Agent tìm plan, chọn phase tiếp theo cần làm."

> **Step 2 — Analysis**: "Đọc plan, map dependencies, list ambiguities."

> **Step 3 — Implement**: "Bắt đầu code. Thấy nó follow plan từng step."

> **Step 4 — Test**: "Tự viết tests + chạy. Nếu fail — nó fix rồi chạy lại. Không bỏ qua."

> **Step 5 — Review**: "Auto code review — check security, performance, YAGNI/KISS/DRY."

> **Step 6 — Approval**: "Hỏi mình approve. Mình review, OK thì nó commit."

**Key takeaway:**
> "3 bước: brainstorm (khi chưa rõ) → plan (luôn luôn) → code (theo plan). Đừng skip plan — đó là cách đảm bảo agent đi đúng hướng."

### [Slide 15] Tổng kết UC3 (2')

> "Nếu đã biết rõ cần làm gì — skip brainstorm, vào thẳng /plan → /code. Brainstorm chỉ khi cần explore giải pháp."

---

## ☕ Break (10 phút)

> "Nghỉ 10 phút. Ai muốn thử gõ command trên máy mình — go ahead."

---

## UC4: Fix Something — /debug → /fix (25 phút)

### [Slide 15-16] Overview (2')
> "Use case 4: app bị lỗi. 2 tình huống:"
> "- Biết issue → /fix trực tiếp"
> "- Không biết → /debug trước, tìm root cause, rồi /fix"

### Demo 1: /debug (10')

**[Slide 16]**
```
/debug "Profile avatar không hiển thị trên Android, iOS thì OK"
```

> **Reproduce**: "Agent cố reproduce — check code, config, platform-specific logic."

> **Investigate**: "Trace data flow: image picker → storage → display. Check Android-specific permissions, file paths."

> **Report**: "Output là debug report: root cause, affected files, recommended fix, risk level."

> "Agent KHÔNG fix — chỉ điều tra. Tại sao? Vì đôi khi root cause khác với triệu chứng. Cần hiểu trước rồi mới sửa."

### Demo 2: /fix (10')

**[Slide 17]**
```
/fix "Avatar không hiển thị do thiếu INTERNET permission trong AndroidManifest"
```

> "Agent routing: đây là Simple/Quick fix → direct fix."

> "Nó sửa AndroidManifest, verify, chạy test."

> "Nếu issue phức tạp hơn — agent sẽ tự route sang strategy khác. Ví dụ type error → focus type checking, CI/CD issue → analyze pipeline."

**Key takeaway:**
> "Không biết issue → /debug trước. Biết rồi → /fix luôn. Agent đủ thông minh để chọn strategy fix phù hợp."

---

## UC5: Team Standards — /docs:update (15 phút)

### [Slide 18-20] Giới thiệu + Demo (10')

```
/docs:update
```

> "Sau khi code xong feature mới — docs cũ bị outdated. /docs:update scan code mới, diff với docs hiện tại, update."

> **Validation**: "Nó còn check: function names trong docs có còn tồn tại trong code không? Links có valid không?"

**[Slide 19] Rules:**
> "Rules là sức mạnh thầm lặng. Copy rules/ vào project → mọi người dùng cùng standards."

**[Slide 20] Coding Level:**
> "Mình recommend team thống nhất level 2-3. Junior set level 1 khi cần học."

### [Slide 22] Quy trình chuẩn (5')
> "Từ hôm nay, mọi feature phải qua: brainstorm (optional) → plan → code → fix/test → docs:update → review → merge."

> "Commit message: conventional format. Không skip failing tests."

---

## Hands-on Practice (45 phút)

### [Slide 21] Hướng dẫn (3')
> "Giờ mọi người tự thực hành trên máy. Mình sẽ đi vòng hỗ trợ."

### Bài tập (42')

> "Mở project Flutter của mình — hoặc dùng sample project đã chuẩn bị."

**Bài 1 (15')**: Setup & Explore
> "Gõ /coding-level chọn level. Rồi /scout khám phá codebase. Cuối cùng /ask hỏi 1 câu về project."

**Bài 2 (20')**: Build Feature
> "Chọn 1 feature nhỏ. /brainstorm → /plan → /code. Follow full flow."

**Bài 3 (10')**: Fix Bug (nếu còn thời gian)
> "Tìm 1 bug nhỏ trong project. /debug → /fix."

**Lưu ý:**
> "Junior: focus bài 1-2, đừng rush. Senior: thử bài 3, explore thêm workflows."

*Đi vòng hỗ trợ, giúp người gặp khó.*

---

## Q&A & Next Steps (10 phút)

### [Slide 23-25]

> "Tổng kết: hôm nay ta đã học 5 use cases cover 80% công việc hàng ngày. Tips quan trọng nhất: mô tả rõ ràng = output tốt."

> "Homework tuần này: dùng /plan + /code cho 1 feature, /fix cho 1 bug."

> "1 tuần nữa mình sẽ review kết quả cùng nhau."

> "Câu hỏi?"

*Mở Q&A, trả lời 3-5 câu hỏi.*

---

## Checklist Trainer

### Trước buổi học (1-2 ngày)
- [ ] Gửi Pre-work Guide cho team
- [ ] Verify mọi người đã setup xong
- [ ] Chuẩn bị sample Flutter project
- [ ] Test tất cả demo commands trên máy
- [ ] Chuẩn bị Cheat Sheet in cho mỗi người

### Ngày training
- [ ] Đến sớm 15' test projector/setup
- [ ] Mở IDE sẵn với project demo
- [ ] Cheat Sheet phát cho mỗi người
- [ ] Đồng hồ bấm giờ cho mỗi phần

### Sau buổi học
- [ ] Share slides + resources
- [ ] Gửi homework nhắc nhở
- [ ] Schedule follow-up session (1 tuần sau)
