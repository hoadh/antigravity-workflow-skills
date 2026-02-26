# Phase 03: Bài Tập Thực Hành

Handout phát cho học viên khi vào phần Hands-on (45 phút).

---

## Bài 1: Setup & Explore (15 phút)

### Mục tiêu
Làm quen với agent, thiết lập coding level, khám phá codebase.

### Các bước

**1.1 — Thiết lập Coding Level**
```
/coding-level
```
- Chọn level phù hợp với trình độ:
  - Junior → Level 1 (giải thích kỹ)
  - Mid → Level 2 (cân bằng)
  - Senior → Level 3 (tối giản)

**1.2 — Khám phá codebase**
```
/scout "Liệt kê tất cả các màn hình trong app"
```
- Xem agent tìm được bao nhiêu files
- Đọc output: file paths, patterns

**1.3 — Hỏi đáp kỹ thuật**
```
/ask "Project này dùng state management gì? Giải thích cách hoạt động"
```
- Thử hỏi thêm 1 câu bất kỳ về project

### Kết quả mong đợi
- [x] Đã set coding level
- [x] Agent tìm được files trong project
- [x] Agent trả lời đúng câu hỏi về codebase

---

## Bài 2: Build Feature (20 phút)

### Mục tiêu
Trải nghiệm full flow: brainstorm → plan → code.

### Chọn đề bài (chọn 1)

| # | Feature | Độ khó |
|---|---------|--------|
| A | Thêm Dark Mode toggle | Dễ |
| B | Thêm màn hình Settings | Trung bình |
| C | Thêm search/filter cho list | Trung bình |

### Các bước

**2.1 — Brainstorm (5')**
```
/brainstorm "<mô tả feature bạn chọn>"
```
- Trả lời các câu hỏi clarify của agent
- Review brainstorm report
- Đồng ý approach

**2.2 — Plan (5')**
```
/plan "Implement <feature> theo brainstorm report"
```
- Đọc plan.md overview
- Check phase files
- Approve plan (hoặc yêu cầu sửa)

**2.3 — Code (10')**
```
/code @plan.md
```
- Theo dõi agent implement
- Kiểm tra code generated
- Approve khi agent hỏi

### Kết quả mong đợi
- [x] Brainstorm report được tạo
- [x] Plan có structure: plan.md + phase files
- [x] Code chạy được, tests pass (nếu có)

### Lưu ý
- Nếu agent hỏi → trả lời rõ ràng
- Nếu plan sai hướng → reject và giải thích
- Không cần hoàn thành hết — hiểu flow là đủ

---

## Bài 3: Fix Bug (10 phút)

### Mục tiêu
Trải nghiệm debug → fix flow.

### Chọn đề bài (chọn 1)

| # | Bug mô phỏng | Độ khó |
|---|--------------|--------|
| A | Sửa lỗi layout bị overflow trên màn hình nhỏ | Dễ |
| B | Fix navigation không hoạt động khi back | Trung bình |
| C | Tìm và fix bug trong project thật của bạn | Tùy |

### Các bước

**3.1 — Debug (5')**
```
/debug "<mô tả triệu chứng bug>"
```
- Đọc debug report: root cause, affected files
- Confirm root cause hợp lý

**3.2 — Fix (5')**
```
/fix "<mô tả bug + root cause đã tìm>"
```
- Theo dõi agent fix
- Verify: app chạy đúng sau fix

### Kết quả mong đợi
- [x] Debug report chỉ đúng root cause
- [x] Fix giải quyết được vấn đề
- [x] Không tạo bug mới (regression)

---

## Bonus: Cho Senior (nếu xong sớm)

### Challenge A: Thử /bootstrap
```
/bootstrap "Flutter notes app with Hive local database"
```
Theo dõi full 9-step flow, compare với cách bạn tự setup.

### Challenge B: Custom Rules
- Mở `.agent/rules/development-rules.md`
- Thử thêm 1 rule mới (ví dụ: "Always use const constructors in Flutter")
- Chạy /code và xem agent có follow rule mới không

### Challenge C: Explore Workflows Khác
```
/brainstorm "So sánh Riverpod vs BLoC cho Flutter state management"
```
Xem agent debate, challenge ý kiến.

---

## Tiêu Chí Đánh Giá

| Level | Hoàn thành | Đánh giá |
|-------|-----------|----------|
| Cơ bản | Bài 1 | Biết dùng agent cơ bản |
| Tốt | Bài 1 + 2 | Nắm được full feature flow |
| Xuất sắc | Bài 1 + 2 + 3 | Sẵn sàng dùng hàng ngày |
| Bonus | + Challenge | Có thể train người khác |
