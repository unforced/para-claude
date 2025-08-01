# Daily Note Processing Metadata

## Overview

Para-Claude tracks daily note processing in two ways:
1. **Processing Log** - `.para-claude/processing-log.md` tracks all processing actions
2. **Note Metadata** - Frontmatter in daily notes shows processing status

## Daily Note Metadata

When a daily note is processed, Para-Claude adds/updates frontmatter:

```yaml
---
processed: true
processed-date: 2025-07-30
processed-version: 0.1.1
processing-summary:
  - Created 1 project
  - Updated 2 people
  - Noted 1 area observation
skipped-items:
  - Personal reflection about dreams
---
```

## Processing States

### Unprocessed Note
```yaml
---
date: 2025-07-29
---
```

### Partially Processed
```yaml
---
date: 2025-07-29
processed: partial
processed-date: 2025-07-30
processing-paused-at: "Thinking about podcast idea"
---
```

### Fully Processed
```yaml
---
date: 2025-07-29
processed: true
processed-date: 2025-07-30
processed-version: 0.1.1
---
```

## Processing After the Fact

Para-Claude handles retroactive processing naturally:

### Finding Unprocessed Notes
- `/process-daily` - Finds oldest unprocessed note
- `/process-backlog` - Shows all unprocessed notes
- Both commands check for `processed: true` in frontmatter

### Temporal Context
When processing old notes, Para-Claude always shows:
- How long ago the note was written
- Clear date context in all interactions
- Chronological awareness in entity creation

### Example Retroactive Processing
```
You: /process-daily

Claude: I found an unprocessed note from 5 days ago (Daily/2025-07-25).

Looking at your note from July 25th...

I notice you mentioned starting guitar lessons. Since this was 5 days ago, 
has this already begun or is it still being planned?
```

## Manual Status Checking

To see processing status of your daily notes:

### Via Dataview
```dataview
TABLE processed, processed-date
FROM "Daily"
WHERE !processed OR processed = "partial"
SORT file.name ASC
```

### Via Search
- Search for `-processed:true` to find unprocessed notes
- Search for `processed:partial` to find incomplete processing

## Reprocessing

If you want to reprocess a note:
1. Remove or set `processed: false` in frontmatter
2. Run `/process-daily --date "YYYY-MM-DD"`

## Integration with Other Commands

- `/weekly-review` can show processing completion rates
- `/process-backlog` respects the metadata
- Future commands can query processing history