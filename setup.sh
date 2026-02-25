#!/bin/bash

# Define colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

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
        mkdir -p "$target"
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
                create_backup "$backup_base" "$target" > /dev/null
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

# ─── Main Script ───

echo -e "${BLUE}=========================================${NC}"
echo -e "${BLUE}  Antigravity Workflow & Skills Setup  ${NC}"
echo -e "${BLUE}=========================================${NC}\n"

echo "Please choose the installation scope:"
echo "1) Global Scope   (Installs to ~/.gemini/)"
echo "2) Project Scope  (Installs to a specific project directory)"
echo ""
read -p "Enter your choice (1 or 2): " scope_choice

# Get absolute path of current repo to ensure we copy from the right place
REPO_ROOT=$(pwd)

if [ "$scope_choice" == "1" ]; then
    echo -e "\n${YELLOW}Setting up Global Scope...${NC}"

    # Create necessary directories
    mkdir -p ~/.gemini/antigravity

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

    echo "Installing global skills dependencies..."
    if [ -f ~/.gemini/antigravity/skills/install.sh ]; then
        cd ~/.gemini/antigravity/skills
        chmod +x ./install.sh
        ./install.sh
    else
        echo -e "${RED}Warning: install.sh not found in global skills directory.${NC}"
    fi

    echo -e "\n${GREEN}✅ Global setup successfully completed!${NC}"

elif [ "$scope_choice" == "2" ]; then
    echo -e "\n${YELLOW}Setting up Project Scope...${NC}"

    read -p "Enter target project path (e.g., ../my-project or /absolute/path): " target_dir

    # Expand shell ~ if provided
    target_dir="${target_dir/#\~/$HOME}"

    if [ -z "$target_dir" ]; then
        echo -e "${RED}Error: Target directory cannot be empty.${NC}"
        exit 1
    fi

    if [ ! -d "$target_dir" ]; then
        echo "Creating target directory $target_dir..."
        mkdir -p "$target_dir"
    fi

    # Get absolute target path for reliable dir switching later
    ABS_TARGET_DIR=$(cd "$target_dir" && pwd)

    echo "Creating target directories in $ABS_TARGET_DIR..."
    mkdir -p "$ABS_TARGET_DIR/.agents/rules"

    echo "Copying rules..."
    cp "$REPO_ROOT"/.agent/rules/*.md "$ABS_TARGET_DIR/.agents/rules/" 2>/dev/null || echo "No rules found to copy."

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

    echo "Copying plan templates..."
    if [ -d "$REPO_ROOT/plans" ]; then
        # Use -R and target directory handling to prevent nesting
        rsync -a "$REPO_ROOT/plans/" "$ABS_TARGET_DIR/plans/" 2>/dev/null || cp -r "$REPO_ROOT/plans" "$ABS_TARGET_DIR/"
    else
        echo "Warning: $REPO_ROOT/plans directory not found to copy."
    fi

    echo "Installing project skills dependencies..."
    if [ -d "$ABS_TARGET_DIR/.agents/skills" ]; then
        cd "$ABS_TARGET_DIR/.agents/skills" || echo -e "${RED}Failed to access skills dir${NC}"
        if [ -f "./install.sh" ]; then
            chmod +x ./install.sh
            ./install.sh
        else
            echo -e "${RED}Warning: install.sh not found in project skills directory.${NC}"
        fi
    else
        echo -e "${RED}Error: Target skills directory was not created successfully.${NC}"
    fi

    echo -e "\n${GREEN}✅ Project setup successfully completed in $ABS_TARGET_DIR!${NC}"

else
    echo -e "${RED}Invalid choice. Exiting.${NC}"
    exit 1
fi
