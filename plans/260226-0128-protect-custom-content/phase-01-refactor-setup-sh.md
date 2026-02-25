# Phase 1: Refactor `setup.sh` — Safe Sync Logic

## Context Links

- Brainstorm: `../reports/brainstormer-260226-0117-protect-custom-content-on-update.md`
- Plan: `plan.md`
- Target: `setup.sh`

## Overview

- **Priority:** High
- **Status:** ✅ Done
- **Description:** Thay thế `rm -rf` + `cp -r` bằng logic an toàn: backup → rsync/cp fallback → detect custom → prompt

## Key Insights

- `setup.sh` có 2 scope bị ảnh hưởng: Global (L23-49) và Project (L51-107)
- Cả 2 scope dùng cùng pattern `rm -rf` + `cp -r` cho skills & workflows
- GEMINI.md chỉ áp dụng cho Global scope
- Project scope có thêm rules & plans copy (không cần thay đổi)

## Related Code Files

| File | Action |
|---|---|
| `setup.sh` | Modify — refactor sync logic |

## Implementation Steps

### Step 1: Thêm helper functions ở đầu file (sau color definitions, ~L9)

```bash
# ─── Helper Functions ───

# Check if rsync is available, set USE_RSYNC flag
USE_RSYNC=false
if command -v rsync &> /dev/null; then
    USE_RSYNC=true
fi

# Create timestamped backup of multiple paths
# Usage: create_backup <backup_base_dir> <source_path1> [source_path2] ...
create_backup() {
    local backup_base="$1"
    shift
    local timestamp=$(date +%Y%m%d-%H%M%S)
    local backup_dir="${backup_base}/.backup-${timestamp}"
    
    mkdir -p "$backup_dir"
    for source in "$@"; do
        if [ -d "$source" ]; then
            cp -r "$source" "$backup_dir/$(basename "$source")"
        elif [ -f "$source" ]; then
            cp "$source" "$backup_dir/"
        fi
    done
    echo "$backup_dir"
}

# Rotate backups, keeping only the N most recent
# Usage: rotate_backups <backup_base_dir> <keep_count>
rotate_backups() {
    local backup_base="$1"
    local keep=${2:-3}
    local backups=($(ls -dt "${backup_base}"/.backup-* 2>/dev/null))
    
    if [ ${#backups[@]} -gt $keep ]; then
        for ((i=$keep; i<${#backups[@]}; i++)); do
            rm -rf "${backups[$i]}"
        done
        echo -e "${YELLOW}  Cleaned up $((${#backups[@]} - $keep)) old backup(s)${NC}"
    fi
}

# Sync directory: rsync if available, cp -r fallback (preserves custom content)
# Usage: safe_sync_dir <source_dir> <target_dir> <label>
safe_sync_dir() {
    local source="$1"
    local target="$2"
    local label="$3"
    
    # Detect custom items (dirs AND files in target not in source)
    if [ -d "$target" ]; then
        local custom_items=()
        # Check directories
        for item in "$target"/*/; do
            [ ! -d "$item" ] && continue
            local name=$(basename "$item")
            if [ ! -d "$source/$name" ]; then
                custom_items+=("$name/")
            fi
        done
        # Check standalone files
        for item in "$target"/*; do
            [ ! -f "$item" ] && continue
            local name=$(basename "$item")
            if [ ! -f "$source/$name" ]; then
                custom_items+=("$name")
            fi
        done
        
        if [ ${#custom_items[@]} -gt 0 ]; then
            echo -e "${YELLOW}  ⚠ Custom ${label} detected: ${custom_items[*]}${NC}"
            echo -e "${YELLOW}  These will be preserved.${NC}"
        fi
    fi
    
    # Sync: rsync (preferred) or cp -r fallback
    if [ "$USE_RSYNC" = true ]; then
        rsync -a "$source/" "$target/"
    else
        echo -e "${YELLOW}  rsync not found, using cp fallback${NC}"
        cp -r "$source/"* "$target/" 2>/dev/null
    fi
}

# Handle GEMINI.md with diff check and user prompt
# Usage: safe_copy_gemini <source_file> <target_file> <backup_base_dir>
safe_copy_gemini() {
    local source="$1"
    local target="$2"
    local backup_base="$3"
    
    if [ -f "$target" ]; then
        if ! diff -q "$source" "$target" > /dev/null 2>&1; then
            echo -e "${YELLOW}  ⚠ GEMINI.md has local modifications.${NC}"
            read -p "  Overwrite with repo version? (Backup saved) [y/N]: " overwrite
            if [[ "$overwrite" =~ ^[Yy]$ ]]; then
                create_backup "$target" "$backup_base" > /dev/null
                cp "$source" "$target"
                echo -e "${GREEN}  Updated GEMINI.md (backup saved)${NC}"
            else
                echo "  Keeping existing GEMINI.md"
            fi
        else
            cp "$source" "$target"
        fi
    else
        cp "$source" "$target"
    fi
}
```

### Step 2: Refactor Global Scope (L29-38)

Thay thế:
```bash
# OLD (L29-38)
echo "Copying skills..."
rm -rf ~/.gemini/antigravity/skills
cp -r "$REPO_ROOT/.agent/skills" ~/.gemini/antigravity/skills

echo "Copying workflows..."
rm -rf ~/.gemini/antigravity/global_workflows
cp -r "$REPO_ROOT/.agent/workflows" ~/.gemini/antigravity/global_workflows

echo "Copying GEMINI.md global rules..."
cp "$REPO_ROOT/.agent/GEMINI.md" ~/.gemini/
```

Bằng:
```bash
# NEW
GLOBAL_BACKUP_BASE=~/.gemini/antigravity

# Backup existing content before sync (atomic — all paths in one call)
if [ -d "$GLOBAL_BACKUP_BASE/skills" ] || [ -d "$GLOBAL_BACKUP_BASE/global_workflows" ]; then
    echo "Creating backup of existing content..."
    BACKUP_DIR=$(create_backup "$GLOBAL_BACKUP_BASE" "$GLOBAL_BACKUP_BASE/skills" "$GLOBAL_BACKUP_BASE/global_workflows")
    rotate_backups "$GLOBAL_BACKUP_BASE" 3
fi

echo "Syncing skills..."
safe_sync_dir "$REPO_ROOT/.agent/skills" "$GLOBAL_BACKUP_BASE/skills" "skills"

echo "Syncing workflows..."
safe_sync_dir "$REPO_ROOT/.agent/workflows" "$GLOBAL_BACKUP_BASE/global_workflows" "workflows"

echo "Handling GEMINI.md global rules..."
safe_copy_gemini "$REPO_ROOT/.agent/GEMINI.md" ~/.gemini/GEMINI.md "$GLOBAL_BACKUP_BASE"
```

### Step 3: Refactor Project Scope (L78-84)

Thay thế:
```bash
# OLD (L78-84)
echo "Copying skills..."
rm -rf "$ABS_TARGET_DIR/.agents/skills"
cp -r "$REPO_ROOT/.agent/skills" "$ABS_TARGET_DIR/.agents/skills"

echo "Copying workflows..."
rm -rf "$ABS_TARGET_DIR/.agents/workflows"
cp -r "$REPO_ROOT/.agent/workflows" "$ABS_TARGET_DIR/.agents/workflows"
```

Bằng:
```bash
# NEW
PROJECT_BACKUP_BASE="$ABS_TARGET_DIR/.agents"

# Backup existing content before sync (atomic)
if [ -d "$PROJECT_BACKUP_BASE/skills" ] || [ -d "$PROJECT_BACKUP_BASE/workflows" ]; then
    echo "Creating backup of existing content..."
    BACKUP_DIR=$(create_backup "$PROJECT_BACKUP_BASE" "$PROJECT_BACKUP_BASE/skills" "$PROJECT_BACKUP_BASE/workflows")
    rotate_backups "$PROJECT_BACKUP_BASE" 3
fi

echo "Syncing skills..."
safe_sync_dir "$REPO_ROOT/.agent/skills" "$PROJECT_BACKUP_BASE/skills" "skills"

echo "Syncing workflows..."
safe_sync_dir "$REPO_ROOT/.agent/workflows" "$PROJECT_BACKUP_BASE/workflows" "workflows"
```

### Step 4: Thêm `.backup-*` vào `.gitignore` (nếu cần)

Kiểm tra xem `.gitignore` đã có pattern cho backup dirs chưa. Nếu chưa, thêm:
```
.backup-*
```

## Todo List

- [x] Step 1: Thêm helper functions (create_backup, rotate_backups, safe_sync_dir, safe_copy_gemini)
- [x] Step 2: Refactor Global Scope — thay rm -rf bằng backup + rsync
- [x] Step 3: Refactor Project Scope — tương tự
- [x] Step 4: Update .gitignore nếu cần
- [x] Test: First install (thư mục trống)
- [x] Test: Update (thư mục đã có content)
- [x] Test: Custom skill preserved after update
- [x] Test: Modified GEMINI.md prompt hiển thị đúng

## Success Criteria

- `rm -rf` không còn xuất hiện trong setup.sh (trừ trong rotate_backups)
- Custom skills/workflows tồn tại sau khi chạy setup lại
- Modified GEMINI.md không bị overwrite nếu user chọn N
- Backup dir tạo đúng format `.backup-YYYYMMDD-HHMMSS`
- Backup rotation giữ đúng 3 bản mới nhất

## Risk Assessment

| Risk | Impact | Mitigation |
|---|---|---|
| rsync không có trên hệ thống | High | Check `command -v rsync`, fallback `cp -r` với warning |
| Backup dirs chiếm dung lượng | Low | Rotation policy giữ 3 bản |
| User confuse bởi prompt GEMINI.md | Low | Clear message + default No |
| First install chậm hơn do backup check | Negligible | Skip nếu thư mục không tồn tại |

## Next Steps

- Phase 2: Update docs
