# Para-Claude Changelog

All notable changes to Para-Claude will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.2.0] - 2025-08-01

### Changed
- **BREAKING**: Migrated to standard PARA terminology
  - Pursuits → Projects
  - Arenas → Areas  
  - Relationships → People (as separate layer)
  - All commands renamed accordingly
- Reorganized command structure for clarity
- Updated all templates to match new terminology
- Enhanced vault-root.md with standard PARA guidance

### Added
- Resources functionality with `/new-resource` command
- Resource template with appropriate metadata
- `/start` command for guided onboarding
- `/process-now` command for real-time daily processing
- `/process-backlog` command for catching up on notes
- Work log documenting Phase 2 completion

### Removed
- Old context files (pursuits.md, arenas.md, relationships.md)
- Deprecated terminology throughout codebase

### Migration Notes
Users upgrading from v0.1.x should:
1. Rename folders in their vault:
   - Pursuits → Projects
   - Arenas → Areas
   - Relationships → People
2. Update any saved commands to use new names
3. See migration guide for detailed instructions

## [0.1.1] - 2025-01-30

### Changed
- **BREAKING**: `/process-daily` is now fully interactive and consent-based
  - No longer generates reports in daily notes
  - Presents findings conversationally
  - Requires explicit approval before making changes
  - Learns from your choices for better future processing

### Added
- Rich frontmatter metadata for all entities (pursuits, arenas, relationships)
- Flexible tagging system replacing rigid categories
- Update functionality in install.sh with backup support
- Dedicated update.sh script for easier updates
- Version tracking in .para-claude/config.yml

### Enhanced
- All relationship commands now use flexible tags instead of fixed types
- Templates include comprehensive metadata fields
- Better navigation support through Obsidian queries

## [0.1.0] - 2025-01-30

### Added
- Initial release of Para-Claude
- Core commands: new-pursuit, new-arena, new-relationship
- Processing commands: process-daily, weekly-review
- Relationship commands: log-interaction, relationship-check
- Growth command: expand
- Comprehensive install.sh script
- CLAUDE.md files for AI context at each level
- README templates for all entity types
- Full documentation and philosophy

### Established
- Human-centric, consent-based approach
- Modified PARA method with Relationships as first-class citizens
- Interactive, conversational command style
- Privacy-first design principles