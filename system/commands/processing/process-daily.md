# /process-daily - Process daily note into PARA

Extract actionable items, insights, and interactions from today's daily note into Projects, Areas, and Relationships.

## Usage
```
/process-daily [--date "YYYY-MM-DD"] [--auto-link] [--create-missing]
```

## What this command does:

1. **Scans daily note** for:
   - Tasks and action items
   - Project references  
   - Area observations
   - People interactions
   - Ideas and insights

2. **Identifies patterns**:
   - `TODO:` or `- [ ]` → Tasks to assign
   - `PROJECT:` or mentions of projects → Project updates
   - `IDEA:` → Potential new projects
   - Person names or "met with", "called" → Relationship updates
   - `REVIEW:` or area mentions → Area maintenance
   - WikiLinks `[[...]]` → Existing connections

3. **Processes content**:
   - Adds updates to relevant READMEs
   - Maintains backlinks to daily note
   - Creates new items if needed (with --create-missing)
   - Preserves context and connections

4. **Generates summary**:
   - Items processed
   - Relationships updated
   - New connections made
   - Orphaned thoughts needing homes

## Processing Rules:

### Tasks
```markdown
Daily Note: "TODO: Research Spanish learning apps"
→ Becomes: Task in [[Projects/Learn Spanish/Tasks]]
   - [ ] Research Spanish learning apps [[Daily/2025-01-28]]
```

### Project Updates
```markdown
Daily Note: "Made progress on Spanish vocabulary, learned 20 new words"
→ Added to: [[Projects/Learn Spanish/Notes]]
   ## 2025-01-28 Update
   Made progress on Spanish vocabulary, learned 20 new words
   Source: [[Daily/2025-01-28]]
```

### Area Observations
```markdown
Daily Note: "Feeling more energetic after morning walks"
→ Added to: [[Areas/Health/README.md]] under Maintenance Notes:
   - [[Daily/2025-01-28]] - Positive impact from morning walks
```

### Relationship Interactions
```markdown
Daily Note: "Coffee with Sarah, discussed her new design role"
→ Added to: [[Relationships/Sarah Chen/README.md]] under Interactions:
   - [[Daily/2025-01-28]] - Coffee, discussed her new design role
```

### Learning Materials
```markdown
Daily Note: "John recommended 'Atomic Habits' book"
→ Added to: [[Relationships/John/README.md]]:
   - [[Daily/2025-01-28]] - Recommended 'Atomic Habits'
→ Optionally to: [[Areas/Learning/README.md]] or relevant project
```

### New Ideas
```markdown
Daily Note: "IDEA: Create a morning routine tracker app"
→ Creates: [[Inbox/Ideas/Morning Routine Tracker]]
   Potential project captured from [[Daily/2025-01-28]]
   Consider adding to [[Areas/Personal Development]]
```

## Pattern Recognition:

### Explicit Markers
- `TODO:` → Task
- `PROJECT:` → Project update
- `IDEA:` → New idea/project
- `LEARN:` → Resource
- `REVIEW:` → Area item
- `NOTE:` → General observation

### Contextual Clues
- "Met with", "called", "texted" → Relationship interaction
- "Discussed", "talked about" → Conversation content
- Questions → Tasks or project ideas
- Reflections → Area observations
- Meeting notes → Project updates + relationship updates
- Decisions → Area standards or project milestones

### Smart Matching
- Mentions of existing projects/areas
- Related tag detection
- Keyword associations
- Time-based patterns

## Output Format:

```markdown
# Daily Processing Report - YYYY-MM-DD

## Summary
- Tasks extracted: X
- Project updates: X
- Area observations: X
- Resources saved: X
- New ideas: X

## Tasks Assigned
- [[Projects/Project Name]]: Task description
- [[Areas/Area Name]]: Maintenance task

## Project Updates
- [[Projects/Project Name]]: Update summary

## Area Observations  
- [[Areas/Area Name]]: Insight noted

## Relationship Interactions
- [[Relationships/Person Name]]: Interaction summary
- [[Relationships/Person 2]]: What was discussed

## New Ideas Captured
- [[Inbox/Ideas/Idea Name]]: Brief description

## Orphaned Thoughts
Content that needs manual categorization:
- Thought 1
- Thought 2

## Suggested Actions
- Consider creating project for: [Recurring theme]
- Review area needing attention: [Area Name]
- Archive completed items: [List]
```

## Output Format:

```markdown
# Daily Processing - YYYY-MM-DD

## 🎯 Potential New Pursuits

### "Starting that podcast"
Mentioned 3 times this month. Ready to pursue?
[ ] Create [[Pursuits/Launch Podcast]]
[ ] Add to someday list
[ ] Not interested

## 🏛️ Arena Observations

### Health
- Energy: Low (mentioned "tired" 4x)
- Exercise: Consistent (gym 3x this week)
- Suggestion: Review sleep patterns?

## 💫 Relationship Insights

### New Connections
- Amy Chen (conference contact, 3 mentions)
  [ ] Create relationship tracking

### Existing Relationships
- [[Relationships/Mom]]: Mentioned health concern
  [ ] Add note and set follow-up

## 🔗 Discovered Connections

- Your interest in podcasting + [[Relationships/John]]'s audio expertise
  [ ] Note this connection

## 💡 Emerging Patterns

1. **Morning routine** (5 mentions this week)
   - [ ] Create pursuit for morning design
   - [ ] Add to [[Arenas/Health]]

## 📥 Items Organized

✓ Added Spanish practice to [[Pursuits/Learn Spanish]]
✓ Updated [[Arenas/Health]] with gym progress

## 🤔 Still Processing

These thoughts need your guidance:
- "Feeling stuck with the big presentation"
  → Create pursuit? Add to work arena?
```

## Examples:

```
/process-daily
```
Interactively process today's note with suggestions.

```
/process-daily --date "2025-01-27"
```
Process a specific date's daily note.

## Implementation Notes:

- Preserve original context with backlinks
- Don't move content, copy with references
- Handle multiple mentions intelligently
- Respect existing organization
- Create processing report in daily note
- Highlight ambiguous items for manual review
- Be smart about name variations (Bob/Robert)
- Don't create relationships for businesses/organizations
- Learn patterns from user's writing style