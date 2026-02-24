# Antigravity Workflow & Skills

Repository containing environment settings, prompt engineering schemas, workflow macros, and specialized technical knowledge bases configured strictly for the Google Antigravity IDE agent.

## 🚀 Hướng dẫn Cài đặt & Cấu hình (Setup Guideline)

Tài liệu này hướng dẫn cách cài đặt các kỹ năng (Skills), thiết lập các quy tắc (Rules) cho Agent và cấu hình các mẫu kế hoạch (Plan templates) cho dự án.

### 1. Cài đặt Skills (Kỹ năng)

Để agent có thể hoạt động với đầy đủ các công cụ và thư viện cần thiết, bạn cần chạy script cài đặt. Mở terminal tại thư mục gốc và chạy các lệnh sau:

```bash
# Cấp quyền thực thi cho script
chmod +x ./install.sh

# Chạy script để cài đặt các thư viện
./install.sh
```

### 2. Cấu hình Project

#### 2.1 Thiết lập Rules (Quy tắc cho Agent)

Rules giúp định hướng hành vi của tác tử AI. Có hai cấp độ cấu hình quy tắc: toàn cục (Global) và theo từng dự án (Workspace). 

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
