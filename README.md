# Antigravity Workflow & Skills

Repository containing environment settings, prompt engineering schemas, workflow macros, and specialized technical knowledge bases configured strictly for the Google Antigravity IDE agent.

## 🚀 Hướng dẫn Cài đặt & Cấu hình (Setup Guideline)

Tài liệu này hướng dẫn cách cài đặt các kỹ năng (Skills), thiết lập các quy tắc (Rules) cho Agent và cấu hình các mẫu kế hoạch (Plan templates) cho dự án.

**Quick start:**

Script cài đặt tự động để hỗ trợ thiết lập cho phạm vi Toàn cục (Global) hoặc Dự án (Project):

```bash
# 1. Cấp quyền thực thi cho script
chmod +x setup.sh

# 2. Chạy script cài đặt 
./setup.sh
```

Hoặc, có thể sao chép thủ công các file như hướng dẫn bên dưới:

```bash
# ── Global Scope ──
cp -r .agent/skills ~/.gemini/antigravity/skills
cp -r .agent/workflows ~/.gemini/antigravity/global_workflows
cp .agent/GEMINI.md ~/.gemini/
cp .agent/.agent.json ~/.gemini/antigravity/
cp -r .agent/output-styles ~/.gemini/antigravity/output-styles
cp -r .agent/schemas ~/.gemini/antigravity/schemas

# ── Project Scope ──
cp -r .agent/rules/*.md your-project/.agents/rules/
cp -r .agent/skills your-project/.agents/skills
cp -r .agent/workflows your-project/.agents/workflows
cp .agent/.agent.json your-project/.agents/
cp -r .agent/output-styles your-project/.agents/output-styles
cp -r .agent/schemas your-project/.agents/schemas
cp -r ./plans your-project/
```

### 1. Cài đặt Skills (Kỹ năng)

Để agent có thể hoạt động với đầy đủ các công cụ và thư viện cần thiết, bạn cần chạy script cài đặt. Mở terminal tại thư mục gốc và chạy các lệnh sau:

```bash
# Di chuyển vào thư mục Skills
cd .agent/skills
# >> Nếu là Global skills thì `cd ~/.gemini/antigravity/skills`

# Cấp quyền thực thi cho script
chmod +x ./install.sh

# Chạy script để cài đặt các thư viện
./install.sh
```

### 2. Cấu hình Project

#### 2.1 Thiết lập Rules (Quy tắc cho Agent)

Rules giúp định hướng hành vi của AI Agent. Có hai cấp độ cấu hình quy tắc: toàn cục (Global) và theo từng dự án (Workspace). 

Bạn hãy copy các file `.md` trong thư mục `rules` của kho lưu trữ này và đặt vào đúng vị trí tương ứng:

*   🌐 **Global Rules (Áp dụng cho mọi dự án):**
    Chỉ sử dụng một file duy nhất để thiết lập quy tắc chung cho IDE của bạn. 
    👉 **Đường dẫn:** `~/.gemini/GEMINI.md`

*   📁 **Workspace Rules (Áp dụng cho dự án hiện tại):**
    Có thể sử dụng nhiều file `.md` để mô tả chi tiết quy tắc phát triển, kiến trúc của dự án.
    👉 **Đường dẫn:** `<thư_mục_gốc_của_project>/.agent/rules/`

#### 2.2 Thiết lập Plan Templates (Mẫu Kế hoạch)

Để Agent có tiêu chuẩn nhất quán khi lập kế hoạch (planning) cho các tính năng mới, bạn cần copy các template có sẵn đưa vào dự án:

*   📋 **Thao tác:** Copy toàn bộ các file cấu trúc kế hoạch từ thư mục `plans/templates/` của kho lưu trữ này vào trong thư mục tương ứng của dự án bạn đang làm việc (ví dụ: `<thư_mục_gốc_của_project>/plans/templates/`).

---

## 📚 Workshop Guide — AI-Powered Development Workshop

Thư mục `workshop_guide/` chứa bộ tài liệu đầy đủ cho buổi training **AI Workflow Tools** (3 tiếng) dành cho Dev Team.

### Tổng quan tài liệu

| # | Tài liệu | File | Đối tượng |
|---|----------|------|-----------|
| 0 | Kế hoạch tổng quan | [plan.md](workshop_guide/plan.md) | Trainer |
| 1 | Slide Deck (~25 slides, Marp) | [phase-01-slide-deck.md](workshop_guide/phase-01-slide-deck.md) | Trainer |
| 2 | Script Bài Giảng (chi tiết) | [phase-02-lecture-script.md](workshop_guide/phase-02-lecture-script.md) | Trainer |
| 3 | Bài Tập Thực Hành (3 bài + bonus) | [phase-03-exercises.md](workshop_guide/phase-03-exercises.md) | Học viên |
| 4 | Pre-work Guide (cài đặt trước) | [phase-04-prework-guide.md](workshop_guide/phase-04-prework-guide.md) | Học viên |
| 5 | Cheat Sheet (A4 — 2 mặt) | [phase-05-cheat-sheet.md](workshop_guide/phase-05-cheat-sheet.md) | Học viên |
| 6 | Slide Marp (bản hoàn chỉnh) | [agy-workflow-skills.md](workshop_guide/agy-workflow-skills.md) | Trainer |

### Sử dụng theo timeline

📅 **Trước workshop (1-2 ngày):**
- Gửi [Pre-work Guide](workshop_guide/phase-04-prework-guide.md) cho học viên để cài đặt môi trường
- In [Cheat Sheet](workshop_guide/phase-05-cheat-sheet.md) (A4 — 2 mặt) phát cho mỗi người

🎤 **Trong workshop:**
- Trainer mở [Slide Deck](workshop_guide/phase-01-slide-deck.md) hoặc [bản Marp hoàn chỉnh](workshop_guide/agy-workflow-skills.md) để trình chiếu
- Trainer theo [Script Bài Giảng](workshop_guide/phase-02-lecture-script.md) để dẫn dắt nội dung
- Phát [Bài Tập Thực Hành](workshop_guide/phase-03-exercises.md) khi vào phần Hands-on (45 phút)

📝 **Sau workshop:**
- Share slides + resources cho team
- Homework: dùng `/plan` + `/code` cho ít nhất 1 feature, `/fix` cho ít nhất 1 bug
- Follow-up: 1 tuần sau → review kết quả
