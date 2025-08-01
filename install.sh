#!/bin/bash

# Para-Claude Installation Script
# https://github.com/yourusername/para-claude

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Version
VERSION="0.1.1"

# Default values
INSTALL_TYPE="full"
COMMAND_LOCATION="local"
VAULT_PATH=""

# Functions
print_header() {
    echo ""
    echo "🧠 Para-Claude Installer v${VERSION}"
    echo "===================================="
    echo ""
}

print_error() {
    echo -e "${RED}❌ Error: $1${NC}" >&2
}

print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ $1${NC}"
}

# Check if directory is an Obsidian vault
is_obsidian_vault() {
    [ -d "$1/.obsidian" ]
}

# Check for Claude Code installation
check_claude_code() {
    if command -v claude >/dev/null 2>&1; then
        return 0
    elif [ -d "$HOME/.claude" ]; then
        return 0
    else
        return 1
    fi
}

# Check write permissions
check_permissions() {
    [ -w "$1" ]
}

# Create folder structure
create_folders() {
    local vault_path="$1"
    
    echo "Creating folder structure..."
    
    # PARA structure
    mkdir -p "$vault_path/Projects"
    mkdir -p "$vault_path/Areas"
    mkdir -p "$vault_path/Resources"
    mkdir -p "$vault_path/Archives"
    
    # People (separate from PARA)
    mkdir -p "$vault_path/People"
    
    # Daily notes
    mkdir -p "$vault_path/Daily"
    
    # Claude commands folder (if local)
    if [ "$COMMAND_LOCATION" = "local" ]; then
        mkdir -p "$vault_path/.claude/commands"
    fi
    
    print_success "Created folder structure"
}

# Install CLAUDE.md files
install_claude_files() {
    local vault_path="$1"
    
    echo "Installing CLAUDE.md file..."
    
    # Copy single CLAUDE.md file to vault root
    cp "$SCRIPT_DIR/system/claude-context/vault-root.md" "$vault_path/CLAUDE.md"
    
    print_success "Installed CLAUDE.md file"
}

# Install commands
install_commands() {
    local vault_path="$1"
    local target_dir=""
    
    echo "Installing commands..."
    
    # Determine target directory
    if [ "$COMMAND_LOCATION" = "local" ]; then
        target_dir="$vault_path/.claude/commands"
    else
        target_dir="$HOME/.claude/commands/para-claude"
        mkdir -p "$target_dir"
    fi
    
    # Copy commands based on install type
    if [ "$INSTALL_TYPE" = "minimal" ]; then
        # Core commands only
        cp "$SCRIPT_DIR/system/commands/core/"*.md "$target_dir/"
    else
        # All commands
        cp -r "$SCRIPT_DIR/system/commands/"* "$target_dir/"
    fi
    
    print_success "Installed commands to $target_dir"
}

# Create welcome note
create_welcome_note() {
    local vault_path="$1"
    
    cat > "$vault_path/Welcome to Para-Claude.md" << 'EOF'
# Welcome to Para-Claude! 🧠✨

Your intentional life operating system is now installed and ready to help you think, connect, and grow.

## 🚀 Quick Start

### Your First Project
Try creating your first project - something with a clear outcome:

```
/new-project "Learn Guitar"
```

Claude will ask you thoughtful questions to understand your motivation and deadline.

### Establish an Area
Set up an ongoing area of responsibility:

```
/new-area "Health"
```

### Add a Resource
Capture something useful for reference:

```
/new-resource "Guitar Learning Guide"
```

### Track a Person
Start being intentional about important connections:

```
/new-person "Best Friend's Name"
```

## 📚 Core Concepts

- **Projects** - Active work with clear outcomes and deadlines
- **Areas** - Ongoing responsibilities you maintain to a standard
- **Resources** - Reference materials that support your work
- **Archives** - Inactive items preserved for reference
- **People** - The humans who matter in your life (separate from PARA)

## 🎯 Daily Workflow

1. **Capture** in daily notes - just write naturally
2. **Process** with `/process-daily` - AI helps organize
3. **Review** weekly with `/weekly-review` - see patterns
4. **Expand** when ready with `/expand` - grow structure

## 💡 Tips

- Start simple - just READMEs at first
- Let structure emerge from use
- Focus on meaning over organization
- Trust the process

## 🆘 Getting Help

- Command help: `/command-name --help`
- All commands: Check `.claude/commands/`
- Documentation: [GitHub Repository]
- Philosophy: Read the CLAUDE.md files

Ready to begin? Try your first command above! 

Remember: This system grows with you. Start where you are, build what you need.
EOF

    print_success "Created welcome note"
}

# Create config file
create_config() {
    local vault_path="$1"
    
    mkdir -p "$vault_path/.para-claude"
    
    cat > "$vault_path/.para-claude/config.yml" << EOF
version: $VERSION
installed: $(date -u +"%Y-%m-%d")
install_type: $INSTALL_TYPE
command_location: $COMMAND_LOCATION
preferences:
  daily_folder: "Daily/"
  archive_after_days: 90
  command_style: conversational
EOF

    print_success "Created configuration file"
}

# Main installation
install() {
    local vault_path="$1"
    
    # Create folders
    create_folders "$vault_path"
    
    # Install CLAUDE.md files
    install_claude_files "$vault_path"
    
    # Install commands
    install_commands "$vault_path"
    
    # Create welcome note (unless minimal)
    if [ "$INSTALL_TYPE" != "minimal" ]; then
        create_welcome_note "$vault_path"
    fi
    
    # Create config
    create_config "$vault_path"
}

# Update existing installation
update() {
    local vault_path="$1"
    local config_file="$vault_path/.para-claude/config.yml"
    local current_version=""
    
    # Check current version
    if [ -f "$config_file" ]; then
        current_version=$(grep "version:" "$config_file" | cut -d' ' -f2)
    else
        print_warning "No existing installation found"
        return 1
    fi
    
    echo "Current version: $current_version"
    echo "Latest version: $VERSION"
    
    if [ "$current_version" = "$VERSION" ]; then
        print_success "Already up to date!"
        return 0
    fi
    
    # Backup current installation
    echo ""
    echo "Backing up current installation..."
    local backup_dir="$vault_path/.para-claude/backups/$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$backup_dir"
    
    # Backup CLAUDE.md files
    if [ -f "$vault_path/CLAUDE.md" ]; then
        cp "$vault_path/CLAUDE.md" "$backup_dir/"
    fi
    for dir in Projects Areas Resources Archives People; do
        if [ -f "$vault_path/$dir/CLAUDE.md" ]; then
            mkdir -p "$backup_dir/$dir"
            cp "$vault_path/$dir/CLAUDE.md" "$backup_dir/$dir/"
        fi
    done
    
    # Backup commands if local
    if [ -d "$vault_path/.claude/commands" ]; then
        cp -r "$vault_path/.claude/commands" "$backup_dir/"
    fi
    
    print_success "Backup created at $backup_dir"
    
    # Update files
    echo ""
    echo "Updating Para-Claude..."
    
    # Update CLAUDE.md files
    install_claude_files "$vault_path"
    
    # Update commands
    install_commands "$vault_path"
    
    # Update config version
    if command -v sed >/dev/null 2>&1; then
        sed -i.bak "s/version: .*/version: $VERSION/" "$config_file"
        rm -f "$config_file.bak"
    else
        # Fallback for systems without sed -i
        mv "$config_file" "$config_file.bak"
        awk -v ver="$VERSION" '/^version:/ {print "version: " ver; next} {print}' "$config_file.bak" > "$config_file"
        rm -f "$config_file.bak"
    fi
    
    # Show what changed
    echo ""
    print_success "Updated from $current_version to $VERSION"
    
    # Version-specific update notes
    case "$VERSION" in
        "0.1.1")
            echo ""
            echo "Changes in v0.1.1:"
            echo "- Made /process-daily interactive and consent-based"
            echo "- Enhanced metadata structure for all entities"
            echo "- Added flexible tagging system"
            ;;
        *)
            echo "See changelog for details"
            ;;
    esac
    
    echo ""
    echo "✨ Update complete!"
    echo ""
    echo "Note: Your content (Projects, Areas, Resources, Archives, People) was not modified."
    echo "Backups are available at: $backup_dir"
}

# Uninstall
uninstall() {
    local vault_path="$1"
    
    echo "This will remove Para-Claude system files."
    echo "Your content (Projects, Areas, Resources, Archives, People) will be preserved."
    echo ""
    read -p "Continue? [y/N]: " -n 1 -r
    echo ""
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # Remove CLAUDE.md file
        rm -f "$vault_path/CLAUDE.md"
        
        # Remove commands (if local)
        if [ -d "$vault_path/.claude/commands" ]; then
            rm -rf "$vault_path/.claude/commands"
        fi
        
        # Remove welcome note
        rm -f "$vault_path/Welcome to Para-Claude.md"
        
        # Remove config
        rm -rf "$vault_path/.para-claude"
        
        print_success "Para-Claude has been uninstalled"
        echo "Your content remains in the vault folders."
    else
        echo "Uninstall cancelled."
    fi
}

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --minimal)
            INSTALL_TYPE="minimal"
            shift
            ;;
        --update)
            INSTALL_TYPE="update"
            shift
            ;;
        --uninstall)
            INSTALL_TYPE="uninstall"
            shift
            ;;
        --help|-h)
            echo "Usage: $0 [options] /path/to/obsidian/vault"
            echo ""
            echo "Options:"
            echo "  --minimal     Install only essential components"
            echo "  --update      Update existing installation"
            echo "  --uninstall   Remove Para-Claude (keeps your content)"
            echo "  --help        Show this help message"
            echo ""
            echo "Example:"
            echo "  $0 ~/Documents/Obsidian/MyVault"
            exit 0
            ;;
        *)
            VAULT_PATH="$1"
            shift
            ;;
    esac
done

# Main script
print_header

# Check vault path
if [ -z "$VAULT_PATH" ]; then
    print_error "No vault path provided"
    echo "Usage: $0 [options] /path/to/obsidian/vault"
    exit 1
fi

# Expand vault path
VAULT_PATH=$(realpath "$VAULT_PATH" 2>/dev/null || echo "$VAULT_PATH")

# Check if path exists
if [ ! -d "$VAULT_PATH" ]; then
    print_error "Directory does not exist: $VAULT_PATH"
    exit 1
fi

# Environment checks
echo "Checking environment..."

# Check if it's an Obsidian vault
if ! is_obsidian_vault "$VAULT_PATH"; then
    print_warning "No .obsidian folder found"
    echo "This doesn't appear to be an Obsidian vault."
    read -p "Create one? [y/N]: " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        mkdir -p "$VAULT_PATH/.obsidian"
        print_success "Created .obsidian folder"
    else
        exit 1
    fi
else
    print_success "Valid Obsidian vault found"
fi

# Check for Claude Code
if check_claude_code; then
    print_success "Claude Code detected"
else
    print_warning "Claude Code not detected"
    echo "Para-Claude works best with Claude Code installed."
    echo "Visit: https://claude.ai/code to install"
    read -p "Continue anyway? [Y/n]: " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]] && [ -n "$REPLY" ]; then
        exit 1
    fi
fi

# Check permissions
if ! check_permissions "$VAULT_PATH"; then
    print_error "Cannot write to vault directory"
    echo "Try: sudo $0 $*"
    echo "Or fix permissions on: $VAULT_PATH"
    exit 1
else
    print_success "Write permissions OK"
fi

# Check for existing installation
if [ -f "$VAULT_PATH/.para-claude/config.yml" ]; then
    print_warning "Para-Claude appears to be already installed"
    echo ""
    echo "Would you like to:"
    echo "1) Update to latest version"
    echo "2) Reinstall fresh"
    echo "3) Cancel"
    echo ""
    read -p "Choice [3]: " choice
    
    case $choice in
        1)
            INSTALL_TYPE="update"
            ;;
        2)
            # Continue with normal install
            ;;
        *)
            echo "Installation cancelled."
            exit 0
            ;;
    esac
fi

# Handle different install types
case $INSTALL_TYPE in
    update)
        update "$VAULT_PATH"
        ;;
    uninstall)
        uninstall "$VAULT_PATH"
        ;;
    *)
        # Normal installation
        echo ""
        echo "This will install Para-Claude in: $VAULT_PATH"
        echo ""
        
        if [ "$INSTALL_TYPE" != "minimal" ]; then
            echo "What would you like to install?"
            echo "1) Full installation (recommended)"
            echo "2) Minimal installation"
            echo ""
            read -p "Choice [1]: " install_choice
            
            if [ "$install_choice" = "2" ]; then
                INSTALL_TYPE="minimal"
            fi
        fi
        
        echo ""
        echo "Where should commands be installed?"
        echo "1) In this vault (.claude/commands/) - Recommended"
        echo "2) Globally (~/.claude/commands/)"
        echo ""
        read -p "Choice [1]: " location_choice
        
        if [ "$location_choice" = "2" ]; then
            COMMAND_LOCATION="global"
        fi
        
        echo ""
        echo "Installing Para-Claude..."
        
        install "$VAULT_PATH"
        
        # Success message
        echo ""
        echo "🎉 Para-Claude installed successfully!"
        echo ""
        echo "Next steps:"
        echo "1. Open your vault in Obsidian"
        if [ "$INSTALL_TYPE" != "minimal" ]; then
            echo "2. Read 'Welcome to Para-Claude.md'"
        fi
        echo "3. Try: /new-project \"Your first project\""
        echo ""
        echo "Need help? Visit: https://github.com/yourusername/para-claude"
        ;;
esac