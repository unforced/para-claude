#!/bin/bash

# Para-Claude Vault Migration Script
# Migrates from modified PARA to standard PARA structure

set -e

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

# Get vault path from argument
VAULT_PATH="${1:-/Users/unforced/Symbols/Words}"

echo "🔄 Para-Claude Vault Migration"
echo "=============================="
echo ""
echo "This will migrate your vault from the old structure to standard PARA."
echo "Vault path: $VAULT_PATH"
echo ""
read -p "Continue? [y/N]: " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Migration cancelled."
    exit 0
fi

echo ""
echo "📁 Creating new folder structure..."

# Create new PARA folders
mkdir -p "$VAULT_PATH/Projects"
mkdir -p "$VAULT_PATH/Areas" 
mkdir -p "$VAULT_PATH/Resources"
mkdir -p "$VAULT_PATH/Archives"
mkdir -p "$VAULT_PATH/People"
mkdir -p "$VAULT_PATH/Daily Pages"

echo -e "${GREEN}✓ Created PARA folders${NC}"

# Move blue-collar and para-claude from Pursuits to Projects
echo ""
echo "📦 Migrating projects..."

if [ -d "$VAULT_PATH/Pursuits/blue-collar" ]; then
    mv "$VAULT_PATH/Pursuits/blue-collar" "$VAULT_PATH/Projects/"
    echo -e "${GREEN}✓ Moved blue-collar to Projects${NC}"
fi

if [ -d "$VAULT_PATH/Pursuits/para-claude" ]; then
    mv "$VAULT_PATH/Pursuits/para-claude" "$VAULT_PATH/Projects/"
    echo -e "${GREEN}✓ Moved para-claude to Projects${NC}"
fi

# Move Daily folder to Daily Pages (if not already there)
if [ -d "$VAULT_PATH/Daily" ] && [ ! -d "$VAULT_PATH/Daily Pages" ]; then
    mv "$VAULT_PATH/Daily" "$VAULT_PATH/Daily Pages"
    echo -e "${GREEN}✓ Moved Daily to Daily Pages${NC}"
elif [ -d "$VAULT_PATH/Daily" ] && [ -d "$VAULT_PATH/Daily Pages" ]; then
    echo -e "${YELLOW}⚠️  Both Daily and Daily Pages exist - manual merge needed${NC}"
fi

# Clean up old structure
echo ""
echo "🧹 Cleaning up old structure..."

# Remove old markdown files in Pursuits
if [ -f "$VAULT_PATH/Pursuits/Give5.md" ]; then
    rm "$VAULT_PATH/Pursuits/Give5.md"
    echo -e "${GREEN}✓ Removed Give5.md${NC}"
fi

if [ -f "$VAULT_PATH/Pursuits/My-Omi.md" ]; then
    rm "$VAULT_PATH/Pursuits/My-Omi.md"
    echo -e "${GREEN}✓ Removed My-Omi.md${NC}"
fi

# Remove empty directories
echo ""
echo "🗑️  Removing old directories..."

# Remove Relationships folder
if [ -d "$VAULT_PATH/Relationships" ]; then
    rm -rf "$VAULT_PATH/Relationships"
    echo -e "${GREEN}✓ Removed Relationships folder${NC}"
fi

# Remove Arenas folder
if [ -d "$VAULT_PATH/Arenas" ]; then
    rm -rf "$VAULT_PATH/Arenas"
    echo -e "${GREEN}✓ Removed Arenas folder${NC}"
fi

# Remove old Archives if empty or as requested
if [ -d "$VAULT_PATH/Archives" ]; then
    if [ -z "$(ls -A "$VAULT_PATH/Archives")" ]; then
        rmdir "$VAULT_PATH/Archives"
        echo -e "${GREEN}✓ Removed empty Archives folder${NC}"
    fi
fi

# Remove Pursuits folder if empty
if [ -d "$VAULT_PATH/Pursuits" ]; then
    if [ -z "$(ls -A "$VAULT_PATH/Pursuits")" ]; then
        rmdir "$VAULT_PATH/Pursuits"
        echo -e "${GREEN}✓ Removed empty Pursuits folder${NC}"
    else
        echo -e "${YELLOW}⚠️  Pursuits folder not empty - check manually${NC}"
    fi
fi

# Create processing log directory
mkdir -p "$VAULT_PATH/.para-claude"

# Initialize processing log if it doesn't exist
if [ ! -f "$VAULT_PATH/.para-claude/processing-log.md" ]; then
    cat > "$VAULT_PATH/.para-claude/processing-log.md" << 'EOF'
# Para-Claude Processing Log

## Processing History
<!-- Entries will be added as daily notes are processed -->
EOF
    echo -e "${GREEN}✓ Created processing log${NC}"
fi

echo ""
echo "✅ Migration complete!"
echo ""
echo "📋 Summary:"
echo "- Projects: blue-collar, para-claude"
echo "- Areas: (ready to create new ones)"
echo "- Resources: (ready to add)"
echo "- Archives: (ready for inactive items)"
echo "- People: (ready to track relationships)"
echo ""
echo "🎯 Next steps:"
echo "1. Run the Para-Claude installer to set up CLAUDE.md files:"
echo "   cd /Users/unforced/Symbols/Codes/para-claude"
echo "   ./install.sh $VAULT_PATH"
echo ""
echo "2. Start processing your daily notes:"
echo "   /process-daily"
echo ""
echo "3. Create new areas and people as needed:"
echo "   /new-area \"Health\""
echo "   /new-person \"Friend Name\""