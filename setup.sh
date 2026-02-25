#!/bin/bash

# Define colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

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
    
    echo "Copying skills..."
    rm -rf ~/.gemini/antigravity/skills
    cp -r "$REPO_ROOT/.agent/skills" ~/.gemini/antigravity/skills
    
    echo "Copying workflows..."
    rm -rf ~/.gemini/antigravity/global_workflows
    cp -r "$REPO_ROOT/.agent/workflows" ~/.gemini/antigravity/global_workflows
    
    echo "Copying GEMINI.md global rules..."
    cp "$REPO_ROOT/.agent/GEMINI.md" ~/.gemini/
    
    echo "Copying .agent.json configuration..."
    if [ -f "$REPO_ROOT/.agent/.agent.json" ]; then
        # Ensure the directory exists
        mkdir -p ~/.gemini/antigravity
        cp "$REPO_ROOT/.agent/.agent.json" ~/.gemini/antigravity/
    fi
    
    echo "Copying output styles..."
    if [ -d "$REPO_ROOT/.agent/output-styles" ]; then
        rm -rf ~/.gemini/antigravity/output-styles
        cp -r "$REPO_ROOT/.agent/output-styles" ~/.gemini/antigravity/output-styles
    fi
    
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
    
    echo "Copying skills..."
    rm -rf "$ABS_TARGET_DIR/.agents/skills"
    cp -r "$REPO_ROOT/.agent/skills" "$ABS_TARGET_DIR/.agents/skills"
    
    echo "Copying workflows..."
    rm -rf "$ABS_TARGET_DIR/.agents/workflows"
    cp -r "$REPO_ROOT/.agent/workflows" "$ABS_TARGET_DIR/.agents/workflows"
    
    echo "Copying .agent.json configuration..."
    if [ -f "$REPO_ROOT/.agent/.agent.json" ]; then
        cp "$REPO_ROOT/.agent/.agent.json" "$ABS_TARGET_DIR/.agents/"
    fi
    
    echo "Copying output styles..."
    if [ -d "$REPO_ROOT/.agent/output-styles" ]; then
        rm -rf "$ABS_TARGET_DIR/.agents/output-styles"
        cp -r "$REPO_ROOT/.agent/output-styles" "$ABS_TARGET_DIR/.agents/"
    fi
    
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
