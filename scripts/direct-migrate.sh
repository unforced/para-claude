#!/bin/bash

# Direct migration script for Para-Claude
set -e

VAULT="/Users/unforced/Symbols/Words"

echo "🔄 Migrating to Standard PARA Structure..."

# Create new folders
echo "📁 Creating new folders..."
mkdir -p "$VAULT/Projects"
mkdir -p "$VAULT/Areas"
mkdir -p "$VAULT/Resources"
mkdir -p "$VAULT/Archives"
mkdir -p "$VAULT/People"
mkdir -p "$VAULT/Daily Pages"

# Move projects
echo "📦 Moving projects..."
if [ -d "$VAULT/Pursuits/blue-collar" ]; then
    cp -r "$VAULT/Pursuits/blue-collar" "$VAULT/Projects/"
    echo "✓ Moved blue-collar"
fi

if [ -d "$VAULT/Pursuits/para-claude" ]; then
    cp -r "$VAULT/Pursuits/para-claude" "$VAULT/Projects/"
    echo "✓ Moved para-claude"
fi

# Move Daily if needed
if [ -d "$VAULT/Daily" ] && [ ! -d "$VAULT/Daily Pages" ]; then
    mv "$VAULT/Daily" "$VAULT/Daily Pages"
    echo "✓ Moved Daily to Daily Pages"
elif [ -d "$VAULT/Daily" ]; then
    # Daily Pages already exists, merge content
    cp -r "$VAULT/Daily/"* "$VAULT/Daily Pages/" 2>/dev/null || true
    echo "✓ Merged Daily content"
fi

# Install CLAUDE.md files
echo "📝 Installing CLAUDE.md files..."
SCRIPT_DIR="/Users/unforced/Symbols/Codes/para-claude"

cp "$SCRIPT_DIR/system/claude-context/vault-root.md" "$VAULT/CLAUDE.md"
cp "$SCRIPT_DIR/system/claude-context/projects.md" "$VAULT/Projects/CLAUDE.md"
cp "$SCRIPT_DIR/system/claude-context/areas.md" "$VAULT/Areas/CLAUDE.md"
cp "$SCRIPT_DIR/system/claude-context/archives.md" "$VAULT/Archives/CLAUDE.md"
cp "$SCRIPT_DIR/system/claude-context/people.md" "$VAULT/People/CLAUDE.md"

# Create Resources CLAUDE.md
cat > "$VAULT/Resources/CLAUDE.md" << 'EOF'
# Working with Resources

Resources are reference materials that support your projects and areas - information you might need to access but isn't currently actionable.

## Your Role with Resources

When working with resources:
- **Curate thoughtfully** - Quality over quantity
- **Connect to active work** - Link to projects/areas using them
- **Review regularly** - Keep collection current and relevant
- **Organize by use** - How you'll access matters most
- **Archive outdated** - Move stale resources to archives

## Resource Types

### Reference Materials
- Articles, guides, documentation
- Research papers and studies
- Best practices and standards

### Tools & Services
- Software and applications
- Online platforms
- Workflows and processes

### Templates & Frameworks
- Reusable structures
- Checklists and procedures
- Decision frameworks

### Learning Materials
- Courses and tutorials
- Books and reading lists
- Practice resources

## Remember

Resources support action but aren't actionable themselves. They're your reference library, not your task list. Keep them organized, current, and connected to your active work.
EOF

# Copy commands
echo "🤖 Installing commands..."
if [ ! -d "$VAULT/.claude/commands" ]; then
    mkdir -p "$VAULT/.claude/commands"
fi
cp -r "$SCRIPT_DIR/system/commands/"* "$VAULT/.claude/commands/"

# Copy templates
echo "📋 Installing templates..."
mkdir -p "$VAULT/Templates"
cp "$SCRIPT_DIR/system/templates/"*.md "$VAULT/Templates/"

# Create processing infrastructure
echo "⚙️ Setting up processing infrastructure..."
mkdir -p "$VAULT/.para-claude"

# Create config
cat > "$VAULT/.para-claude/config.yml" << EOF
version: 0.1.1
installed: $(date -u +"%Y-%m-%d")
install_type: full
command_location: local
preferences:
  daily_folder: "Daily Pages/"
  archive_after_days: 90
  command_style: conversational
EOF

# Create processing log
if [ ! -f "$VAULT/.para-claude/processing-log.md" ]; then
    cat > "$VAULT/.para-claude/processing-log.md" << 'EOF'
# Para-Claude Processing Log

## Processing History
<!-- Entries will be added as daily notes are processed -->
EOF
fi

# Clean up old structure
echo "🧹 Cleaning up..."
rm -f "$VAULT/Pursuits/Give5.md" 2>/dev/null || true
rm -f "$VAULT/Pursuits/My-Omi.md" 2>/dev/null || true
rm -rf "$VAULT/Relationships" 2>/dev/null || true
rm -rf "$VAULT/Arenas" 2>/dev/null || true

# Remove old folders if empty
rmdir "$VAULT/Archives" 2>/dev/null || true
if [ -d "$VAULT/Pursuits" ] && [ -z "$(ls -A "$VAULT/Pursuits")" ]; then
    rmdir "$VAULT/Pursuits"
fi

# Update welcome note
cp "$SCRIPT_DIR/system/templates/welcome.md" "$VAULT/Welcome to Para-Claude.md" 2>/dev/null || true

echo ""
echo "✅ Migration complete!"
echo ""
echo "📊 Summary:"
echo "- Projects: blue-collar, para-claude ✓"
echo "- CLAUDE.md files installed ✓"
echo "- Commands installed to .claude/commands/ ✓"
echo "- Templates installed ✓"
echo "- Processing infrastructure ready ✓"
echo ""
echo "🎯 Ready to use:"
echo "- /process-daily (processes yesterday's note)"
echo "- /process-now (real-time processing)"
echo "- /new-project, /new-area, /new-person, /new-resource"
echo "- /process-backlog (catch up on old notes)"