# Phase 04: Pre-work Guide

Gửi cho team **1-2 ngày trước** buổi training.

---

## Hướng Dẫn Cài Đặt Trước Buổi Workshop

Xin chào team! Để buổi workshop diễn ra trơn tru, mọi người vui lòng hoàn thành các bước dưới đây trước ngày training.

**Thời gian ước tính**: 15-20 phút

---

### Bước 1: Yêu cầu hệ thống

- [x] Flutter SDK đã cài (chạy `flutter doctor` OK)
- [x] IDE: Google IDX / VS Code / Android Studio
- [x] Git đã cài
- [x] Gemini API key (đã được cấp)
- [x] Internet ổn định

### Bước 2: Clone repository

```bash
git clone https://github.com/hoadh/antigravity-workflow-skills.git
cd antigravity-workflow-skills
```

### Bước 3: Chạy setup tự động

```bash
# Cấp quyền thực thi
chmod +x setup.sh

# Chạy script — chọn "Global" khi được hỏi
./setup.sh
```

Script sẽ tự copy rules, workflows, skills vào đúng vị trí.

### Bước 4: Cài đặt Skills dependencies

```bash
# Di chuyển vào thư mục Skills (Global)
cd ~/.gemini/antigravity/skills

# Cấp quyền và chạy install
chmod +x ./install.sh
./install.sh
```

### Bước 5: Verify cài đặt

Mở IDE (Google IDX hoặc tương đương), gõ:
```
/ask "Hello, bạn là ai?"
```

**Kết quả mong đợi**: Agent phản hồi, giới thiệu bản thân.

Nếu không hoạt động → xem phần Troubleshooting bên dưới.

### Bước 6: Chuẩn bị project Flutter

**Option A**: Dùng project đang làm (khuyến khích)
- Mở project Flutter hiện tại của bạn

**Option B**: Dùng sample project (nếu chưa có)
- Trainer sẽ share link sample project trước buổi học

---

## Troubleshooting

### Agent không phản hồi
1. Check Gemini API key đã set chưa
2. Check internet connection
3. Thử restart IDE

### setup.sh báo lỗi
1. Check quyền: `chmod +x setup.sh`
2. Chạy lại: `./setup.sh`
3. Nếu vẫn lỗi → copy manual theo README.md

### install.sh báo thiếu Python
1. Check Python: `python3 --version` (cần 3.8+)
2. Nếu chưa có: `brew install python3` (macOS) hoặc tải từ python.org

### Vẫn không được?
Gửi screenshot lỗi cho trainer qua [kênh chat team].
Trainer sẽ hỗ trợ trước buổi học.

---

## Checklist Hoàn Thành

- [ ] Flutter SDK hoạt động (`flutter doctor` OK)
- [ ] Đã clone repo và chạy `setup.sh`
- [ ] Đã chạy `install.sh` cho Skills
- [ ] Agent phản hồi khi gõ `/ask "Hello"`
- [ ] Có project Flutter để thực hành

**Hoàn thành xong → reply "Done" ở kênh chat team.**
