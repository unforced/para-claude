# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Para-Claude is an intentional life operating system that transforms Obsidian vaults into thinking partners. It combines the PARA method (Projects, Areas, Resources, Archives) with Claude Code's intelligence to create conversational commands for personal knowledge management.

## Key Commands

### Installation and Updates
```bash
# Install Para-Claude in an Obsidian vault
./install.sh /path/to/obsidian/vault

# Minimal installation (commands only, no examples)
./install.sh --minimal /path/to/obsidian/vault  

# Update existing installation
./install.sh --update /path/to/obsidian/vault
# Or from scripts directory:
./scripts/update.sh /path/to/obsidian/vault
```

### Development Scripts
```bash
# Direct migration (copies files without backup)
./scripts/direct-migrate.sh /source/vault /target/vault

# Vault migration with backup
./scripts/migrate-vault.sh /source/vault /target/vault

# Sync changes between vaults
./scripts/sync-vault.sh /source/vault /target/vault
```

## Architecture

### Core Structure
```
├── system/
│   ├── commands/          # Slash commands for Claude (Markdown files)
│   │   ├── core/         # Basic entity creation (areas, projects, people)
│   │   ├── processing/   # Daily note processing and reviews
│   │   ├── people/       # Relationship management
│   │   └── growth/       # Expansion and archiving
│   ├── claude-context/   # AI guidance files
│   │   └── vault-root.md # Main context file for Claude
│   └── templates/        # Entity templates (area, project, person, resource)
├── docs/                 # Documentation
├── examples/            # Example vault structure
└── scripts/            # Shell scripts for installation/management
```

### Command Philosophy

Commands are conversational Markdown files that guide Claude through interactive processes:
- Ask questions to understand user intent before creating entities
- Use consent-based processing (nothing automatic)
- Maintain temporal awareness (understand when things happened)
- Focus on relationships as core infrastructure

### Key Design Patterns

1. **Entity Types**: Projects, Areas, Resources, Archives, People
   - Projects: Have clear outcomes and deadlines
   - Areas: Ongoing responsibilities  
   - People: First-class entities, not afterthoughts
   - Resources: Reference materials

2. **Metadata Structure**: Rich frontmatter for navigation
   - `type`: Entity type (project, area, person, resource)
   - `status`: active, paused, completed, archived
   - `energy`: high, medium, low, dormant
   - Temporal fields: started, last_interaction, next_review
   - Relationship fields: collaborators, shared_interests

3. **Processing Flow**: 
   - `/process-daily`: Review daily notes with consent
   - Maintains `.para-claude/processing-log.md` to track processed notes
   - Interactive pattern recognition and entity creation

### Command Implementation

Commands follow this pattern:
1. Understand intent through questions
2. Show what will happen
3. Execute only with consent
4. Maintain links and context
5. Learn from user responses

Example from `/new-project`:
- Asks about motivation (why)
- Explores connections (who/what)
- Designs for user's style (how)
- Creates personalized structure

### Installation Mechanics

The `install.sh` script:
- Validates Obsidian vault structure
- Creates Para-Claude directories
- Copies system files preserving structure
- Handles updates without overwriting customizations
- Maintains configuration in `.para-claude/config.yml`

## Development Guidelines

1. **Commands are conversations**: Write commands as interactive guides, not automation scripts
2. **Consent is required**: Never create or modify without explicit user approval
3. **Context matters**: Always preserve temporal context and relationships
4. **Start simple**: Begin with basic structure, use `/expand` to grow
5. **People first**: Relationships are infrastructure, not metadata

## Testing Approach

This is a shell script and Markdown-based project for Obsidian integration. Testing involves:
- Manual installation testing in test vaults
- Verifying command interactions in Obsidian with Claude Code
- Checking file structure preservation during updates

No automated test framework is configured as this is primarily a content and installation system.