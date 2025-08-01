# Para-Claude Linking Strategy

## Overview

Para-Claude uses a sophisticated linking strategy to build a true knowledge graph while respecting user preferences about modifying daily notes.

## Linking Principles

### 1. Always Create Backlinks (Default)
Every entity created from a daily note MUST include a temporal backlink to its origin:
- Simple: `Emerged from [[Daily/2025-08-01]]`
- With anchor: `Emerged from [[Daily/2025-08-01#para-claude-gui]]`
- Multiple mentions: `Mentioned in [[Daily/2025-07-15]], [[Daily/2025-07-22]], [[Daily/2025-08-01]]`

### 2. Optional Forward Links (Flag-Controlled)
Daily notes can be updated with forward links using `--update-daily-links` flag:
- Default: OFF (daily notes remain unchanged)
- When ON: Adds links inline where entities are mentioned
- Preserves original text while adding wiki-links

### 3. Context-Aware Anchors
Use heading anchors when available to link to specific sections:
- If section has heading: `[[Daily/2025-08-01#morning-reflections]]`
- If no heading: Create descriptive anchor based on content

## Implementation Patterns

### Standard Backlink Format

```markdown
---
type: project
status: active
started: 2025-08-01
---

# Project Name

[Project content...]

## References
- Emerged from [[Daily/2025-08-01#project-idea]]
- Further developed in [[Daily/2025-08-03#technical-details]]
- Milestone reached in [[Daily/2025-08-10#first-success]]
```

### Daily Note Forward Linking (When Enabled)

Before processing:
```markdown
Had a great idea for a podcast about local builders. 
Jon offered to help with audio setup.
```

After processing with `--update-daily-links`:
```markdown
Had a great idea for a [[Projects/Boulder Builders Podcast|podcast about local builders]]. 
[[People/Jon|Jon]] offered to help with audio setup.
```

### Temporal Context in Backlinks

Always include temporal context in backlinks:

```markdown
## Interactions
- 2025-08-01: Coffee discussion about distributed systems ([[Daily/2025-08-01#coffee-sarah]])
- 2025-08-08: Pair programming on sync engine ([[Daily/2025-08-08#pair-programming]])
- 2025-08-15: Architecture review session ([[Daily/2025-08-15#architecture-review]])
```

## Command-Specific Patterns

### /process-daily
Default behavior:
- ✅ Creates backlinks in all new entities
- ❌ Doesn't modify daily note
- With `--update-daily-links`: Updates daily note with forward links

### /process-now
Default behavior:
- ✅ Creates backlinks to today's note with anchors
- ❌ Doesn't modify today's active note
- With `--update-daily-links`: Adds links inline immediately

### /process-backlog
Default behavior:
- ✅ Creates backlinks to all relevant daily notes
- ❌ Doesn't modify any daily notes
- With `--update-daily-links`: Batch updates all processed notes

### /weekly-review
- Creates review note with links to all reviewed entities
- Links back to the review from updated entities
- No daily note modifications (not applicable)

## Link Types

### 1. Origin Links
Track where an idea first emerged:
```markdown
Origin: [[Daily/2025-08-01#initial-idea]]
```

### 2. Evolution Links
Track how an idea developed over time:
```markdown
## Evolution
- Conceived: [[Daily/2025-08-01#initial-idea]]
- Researched: [[Daily/2025-08-03#market-research]]
- Prototyped: [[Daily/2025-08-10#first-prototype]]
- Launched: [[Daily/2025-08-15#launch-day]]
```

### 3. Cross-Reference Links
Connect related entities discovered during processing:
```markdown
## Related
- Supports: [[Areas/Boulder.Earth]]
- Collaborator: [[People/Jon]]
- Uses: [[Resources/Podcast Equipment Guide]]
```

## Privacy Considerations

### People Links
When linking to people, be mindful of context:
- Professional contexts: Include project/work details
- Personal contexts: Respect privacy boundaries
- Shared activities: Focus on the activity, not personal details

### Sensitive Topics
Some daily note content shouldn't be linked:
- Personal reflections
- Health details
- Private thoughts
These are left in daily notes without entity creation

## Technical Implementation

### Anchor Generation
Generate anchors from content:
1. Use existing headings when available
2. Create descriptive anchors from first few words
3. Ensure uniqueness within the daily note
4. Keep anchors URL-safe and readable

### Link Insertion
When updating daily notes (with flag):
1. Find exact text match
2. Wrap with wiki-link syntax
3. Use alias to preserve original text
4. Don't break existing formatting

### Conflict Resolution
If text appears multiple times:
1. Link first occurrence only
2. Or prompt user for specific instance
3. Never link within existing links

## Examples

### Project Creation with Full Linking

Daily note:
```markdown
## Morning thoughts
Thinking about creating a GUI for Para-Claude using the Claudia codebase.
This could run on both MacBook and Daylight devices.
```

Created project includes:
```markdown
## Origin
This project emerged from morning thoughts about a unified interface.
See: [[Daily/2025-08-01#morning-thoughts]]

## Technical Foundation
- Leverage [[Resources/Claudia|Claudia codebase]] for Tauri setup
- Target platforms: MacBook and [[Resources/Daylight Device|Daylight]]
```

With `--update-daily-links` flag, daily note becomes:
```markdown
## Morning thoughts
Thinking about creating a GUI for [[Projects/Para-Claude GUI|Para-Claude]] using the [[Resources/Claudia|Claudia codebase]].
This could run on both MacBook and [[Resources/Daylight Device|Daylight]] devices.
```

This strategy ensures that:
1. You can always trace ideas back to their origins
2. Daily notes remain untouched unless explicitly requested
3. The knowledge graph builds naturally over time
4. Context is preserved at every step