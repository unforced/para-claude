#!/bin/bash

# Sync Para-Claude vault with latest version
set -e

VAULT="/Users/unforced/Symbols/Words"
SCRIPT_DIR="/Users/unforced/Symbols/Codes/para-claude"

echo "🔄 Syncing Para-Claude with latest version..."
echo ""

# Update CLAUDE.md
echo "📝 Updating CLAUDE.md..."
cp "$SCRIPT_DIR/system/claude-context/vault-root.md" "$VAULT/CLAUDE.md"
echo "✓ Updated CLAUDE.md"

# Sync commands
echo "🤖 Syncing commands..."
cp -r "$SCRIPT_DIR/system/commands/"* "$VAULT/.claude/commands/"
echo "✓ Commands synced"

# Update templates
echo "📋 Updating templates..."
mkdir -p "$VAULT/Templates"
cp "$SCRIPT_DIR/system/templates/"*.md "$VAULT/Templates/"
echo "✓ Templates updated"

# Update version in config
echo "⚙️ Updating config..."
if [ -f "$VAULT/.para-claude/config.yml" ]; then
    sed -i.bak 's/version: .*/version: 0.1.1/' "$VAULT/.para-claude/config.yml"
    rm -f "$VAULT/.para-claude/config.yml.bak"
    echo "✓ Config updated"
fi

# Verify structure
echo ""
echo "📊 Verifying structure:"
echo -n "- CLAUDE.md: "
[ -f "$VAULT/CLAUDE.md" ] && echo "✓" || echo "✗"

echo -n "- Commands: "
[ -d "$VAULT/.claude/commands" ] && echo "✓" || echo "✗"

echo -n "- Templates: "
[ -d "$VAULT/Templates" ] && echo "✓" || echo "✗"

echo -n "- Processing log: "
[ -f "$VAULT/.para-claude/processing-log.md" ] && echo "✓" || echo "✗"

echo ""
echo "✅ Sync complete! Your vault is up to date with Para-Claude v0.1.1"
echo ""
echo "Key changes in this version:"
echo "- Single CLAUDE.md at vault root (no category-specific files)"
echo "- /process-now command for real-time processing"
echo "- Enhanced processing log tracking"
echo "- Standard PARA structure with People layer"