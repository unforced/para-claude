# /process-backlog - Catch up on unprocessed daily notes

Review and process multiple unprocessed daily notes in an efficient, batched workflow with unified creation flows.

## Usage
```
/process-backlog [--limit 5] [--from "YYYY-MM-DD"] [--to "YYYY-MM-DD"] [--update-daily-links]
```

Options:
- `--limit N` - Process only N notes (default: all)
- `--from` - Start date for processing
- `--to` - End date for processing  
- `--update-daily-links` - Add wiki-links in processed daily notes (off by default)

## Philosophy
- **Batch efficiency** - Process multiple notes without fatigue
- **Pattern awareness** - See trends across time periods
- **Flexible pacing** - Take breaks whenever needed
- **Context preservation** - Remember when things actually happened

## What It Does

1. **Identifies backlog** - Finds all unprocessed daily notes
2. **Shows overview** - Displays what needs processing
3. **Batches similar items** - Groups related findings across dates
4. **Maintains context** - Always shows when things happened
5. **Tracks progress** - Updates processing log as you go
6. **Rich creation** - Uses unified flows for all new entities
7. **Smart linking** - Creates temporal backlinks to all relevant dates

## Interactive Example:

```
You: /process-backlog

Claude: I found 7 unprocessed daily notes from the past two weeks:

📊 **Backlog Overview**
- Oldest: Daily/2025-01-15 (2 weeks ago)
- Newest: Daily/2025-01-29 (2 days ago)
- Total items to review: ~23

Would you like to:
1. Process all 7 notes (est. 15-20 min)
2. Process last 5 notes only
3. Set a custom date range
4. See what's in the backlog first

You: 4

Claude: Here's a preview of patterns I found:

📈 **Recurring Themes** (across all 7 notes)
- "Morning meditation" mentioned 5 times
- "Podcast idea" discussed on 3 different days
- Coffee with Sarah (3 meetings)

🔍 **By Date**:
- **Jan 15**: Team meeting, project kickoff
- **Jan 18**: Health observations, new book started
- **Jan 22**: Multiple person interactions
- **Jan 24**: Creative breakthrough noted
- **Jan 26**: Weekly review themes
- **Jan 28**: Podcast research, family time
- **Jan 29**: Project milestone, exercise routine

Ready to start processing? We can:
1. Work through chronologically
2. Process by theme (persons, projects, etc.)
3. Focus on specific dates

You: 2

Claude: Great! Let's process by theme for efficiency.

🤝 **Person Updates** (found across 4 days)

I found multiple mentions of Sarah across your notes:
- Jan 22: "Coffee with Sarah - she's starting a new design agency"
- Jan 28: "Sarah excited about first client"

Let me help you capture this relationship properly.

**Extracted context about Sarah:**
- Starting a new design agency (entrepreneurial)
- You had coffee (regular meetings?)
- She got her first client quickly (momentum)

What's your connection with Sarah?
1. 👥 Professional peer - fellow entrepreneur
2. 🤝 Potential collaborator - might work together
3. 🌟 Mentor/mentee - learning relationship
4. 👫 Friend with shared interests
5. 🎯 Other: ___

You: 1 and 4

Claude: Great! Professional peer and friend - those meaningful connections that blend work and life.

Based on your notes, what shared interests should I capture?
- ✓ Design and creativity
- ✓ Entrepreneurship
- ? Client work strategies
- ? Other: ___

You: All of those, plus we both love coffee shop working sessions

Claude: Perfect! I'll create [[People/Sarah]] with:
- Professional peer + friend relationship
- Shared interests: design, entrepreneurship, client strategies, coffee shop work
- Recent interactions: Coffee (Jan 22), First client celebration (Jan 28)
- Note about her new design agency

I'll also create temporal backlinks to both daily notes.

Ready?

You: Yes

Claude: ✓ Created [[People/Sarah]] with rich context
✓ Added interactions:
  - "Coffee - discussing new agency" [[Daily/2025-01-22#coffee-sarah]]
  - "Celebrated first client" [[Daily/2025-01-28#sarah-client]]
✓ Noted shared coffee shop working preference
✓ Set her as active connection with entrepreneurial energy

Now, I also found mentions of Mom and Mark. Should we process those?

Would you like to:
1. Log all these interactions
2. Review each one individually
3. Skip person updates

You: 1

Claude: I'll log these interactions:

✓ [[Persons/Sarah Chen]]:
  - Jan 22: Coffee - starting new design agency
  - Jan 28: Excited about first client

✓ [[Persons/Mom]]:
  - Jan 22: Call about garden project

✓ [[Persons/Mark]]:
  - Jan 26: Team lunch - interested in mentorship

Next theme:

🎯 **Emerging Project: Podcast** (mentioned Jan 15, 24, 28)

I see an evolution:
- Jan 15: "Thinking about starting a podcast"
- Jan 24: "Researched podcast equipment"
- Jan 28: "John offered to help with podcast"

This seems ready to become a project. Should I create it?
```

## Batching Strategies:

### By Theme
- Groups similar items across dates
- Reduces context switching
- Highlights patterns better

### By Date
- Maintains chronological flow
- Preserves daily context
- Good for narrative understanding

### By Priority
- Processes important items first
- Handles time-sensitive updates
- Focuses on actionable items

## Progress Tracking:

```
Processing Daily/2025-01-15... [✓]
Processing Daily/2025-01-18... [✓]
Processing Daily/2025-01-22... [✓]
Processing Daily/2025-01-24... [⏸️ paused]
Processing Daily/2025-01-26... [ ]
Processing Daily/2025-01-28... [ ]
Processing Daily/2025-01-29... [ ]

Completed: 3/7 (43%)
Current: Paused at Jan 24
Resume with: /process-backlog --from "2025-01-24"
```

## Smart Features:

- **Pattern detection** across multiple notes
- **Duplicate awareness** (won't create same project twice)
- **Person timelines** (shows interaction progression)
- **Theme clustering** (groups related observations)
- **Flexible pacing** (pause and resume anytime)

## Examples:

```
/process-backlog
```
Process all unprocessed notes

```
/process-backlog --limit 5
```
Process only the 5 most recent unprocessed notes

```
/process-backlog --from "2025-01-15" --to "2025-01-25"
```
Process specific date range

## Linking Behavior:

### Default (No Flag)
- ✅ All created entities include backlinks to source daily notes
- ✅ Multiple mentions create multiple temporal links
- ✅ Full context preserved from each mention
- ❌ Daily notes remain unchanged

Example in created entity:
```markdown
## Timeline
- First mentioned: [[Daily/2025-01-15#podcast-idea]]
- Researched equipment: [[Daily/2025-01-22#audio-research]]  
- Decided to start: [[Daily/2025-01-28#podcast-decision]]
```

### With --update-daily-links
- ✅ All default linking PLUS
- ✅ Batch updates all processed daily notes
- ✅ Adds wiki-links while preserving original text
- ✅ Shows summary of link updates at end

Example batch update:
```
✓ Updated 7 daily notes with wiki-links:
  - Daily/2025-01-15: Added 2 links
  - Daily/2025-01-22: Added 3 links
  - Daily/2025-01-28: Added 1 link
  ...
```

## Difference from /process-daily:

- **process-daily**: One note at a time, deep interaction, immediate processing
- **process-backlog**: Multiple notes, pattern recognition, batch efficiency

Use process-backlog when you have several days to catch up on and want to see patterns across time rather than diving deep into each day.