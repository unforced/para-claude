# /process-daily - Interactive daily note processing

Thoughtfully review your daily note with AI assistance, discovering patterns and connections with your consent before making any changes.

## Usage
```
/process-daily [--date "YYYY-MM-DD"] [--skip-processed] [--update-daily-links]
```

Options:
- Without arguments: Processes the oldest unprocessed daily note (typically yesterday's)
- `--date`: Processes a specific date (even if already processed)
- `--skip-processed`: Only shows unprocessed notes
- `--update-daily-links`: Add wiki-links in daily notes (off by default)

**Default behavior**: Finds the oldest unprocessed note, which is usually yesterday's note after you've finished your daily writing

## Philosophy
- **Consent-based** - Nothing happens without your agreement
- **Interactive** - Conversational discovery, not automation
- **Intelligent** - Recognizes patterns and suggests connections
- **Respectful** - Your notes remain yours until you choose to organize
- **Temporal awareness** - Understands when things happened, not just when processed

## Interactive Process:

1. **Analysis Phase**
   - Reads your daily note
   - Identifies patterns and connections
   - Finds potential updates
   - Discovers emerging themes

2. **Conversation Phase**
   - Shows findings one at a time
   - Asks clarifying questions
   - Confirms interpretations
   - Waits for your input

3. **Action Phase**
   - Only proceeds with consent
   - Shows exactly what will happen
   - Makes approved changes
   - Preserves original context

## Processing Log

The command maintains a log at `.para-claude/processing-log.md` tracking:
- Which daily notes have been processed
- When they were processed
- What actions were taken

This enables:
- Smart defaults (process oldest unprocessed)
- Avoiding duplicate processing
- Catching up on backlog
- Understanding your processing patterns

## Interactive Example with Unified Creation Flow:

```
You: /process-daily

Claude: I found 3 unprocessed daily notes. Let me start with the oldest:

📅 **Processing: Daily/2025-01-28** (3 days ago)

I'll review this note and help you process it thoughtfully.

[Reads note and finds patterns]

I noticed a few interesting things:

🎯 **Potential New Project: Podcast**
You wrote: "thinking about starting that podcast" - this is the 3rd time this month!

Let me extract what you've shared about this:
- "Want to interview interesting builders in Boulder"
- "John offered to help with audio equipment setup"
- "Could tie into Boulder.Earth community efforts"
- Previous mentions on Jan 15th and Jan 22nd

This seems like a project that's ready to emerge. Let me help you set it up thoughtfully.

What draws you to starting a podcast?
1. 🎨 Creative expression - stories demanding to be told
2. 🏗️ Community building - strengthening connections
3. 📚 Knowledge sharing - teaching what you've learned
4. 💼 Professional growth - building authority
5. 🌍 Other: ___

You: 2 and 3

Claude: Excellent! Community building and knowledge sharing - that's powerful.

I noticed John offered to help with audio equipment. Should I link him as a collaborator?
And this could support your [[Areas/Boulder.Earth]] work, right?

You: Yes to both

Claude: What rhythm would work for you?
1. Weekly episodes (consistent schedule)
2. Bi-weekly (more production time)
3. Monthly deep-dives (quality over quantity)
4. Season-based (focused bursts)

You: 2

Claude: Perfect! I'll create [[Projects/Launch Podcast]] with:
- Community building + knowledge sharing focus
- [[People/John]] as collaborator
- Supporting [[Areas/Boulder.Earth]]
- Bi-weekly rhythm
- High energy (mentioned 3 times!)

I'll also:
- Copy your full podcast thoughts to the project folder
- Add backlink to [[Daily/2025-01-28#podcast-idea]]
- Create initial milestones based on your vision

Ready?

You: Yes

Claude: ✓ Created [[Projects/Launch Podcast]] with rich context
✓ Copied full thoughts to `Projects/Launch Podcast/Daily Thoughts/2025-01-28.md`
✓ Added bidirectional links
✓ Set up initial structure with your preferences

I also found:

💫 **Person Update**
"Coffee with Mom - she seemed worried about her garden"

Should I log this interaction with Mom?

You: Yes, and remind me to follow up about the garden

Claude: Done! Added to [[Persons/Mom]]:
- Coffee chat - garden worries
- Follow-up reminder added

🏛️ **Area Observation**
You mentioned feeling "more energetic after morning walks" 

Add this positive note to [[Areas/Health]]?

You: Yes

Claude: ✓ Completed Actions:
- Created [[Projects/Launch Podcast]] with John as supporter
- Updated [[Persons/Mom]] with interaction and follow-up
- Added morning walk benefits to [[Areas/Health]]

I found one more thing I'm unsure about:
"Really stuck on the presentation for next week"

This could be:
- A task for an existing work project
- Anxiety that belongs in a daily reflection
- Something else?

What would you like to do with this?

You: Just a reflection, leave it

Claude: Understood, leaving that as a personal reflection.

✅ **Daily/2025-01-28 processed!**

I've logged this processing session. You have 2 more unprocessed notes:
- Daily/2025-01-29 (2 days ago)
- Daily/2025-01-30 (yesterday)

Would you like to:
1. Continue with the next note (2025-01-29)
2. Take a break and process later
3. See a summary of what we just processed

You: 2

Claude: No problem! I've saved your progress. 

When you're ready to continue, just run `/process-daily` again and I'll pick up with Daily/2025-01-29.

Have a great day!
```

## Pattern Recognition:

### People Patterns
- Names in context → Suggests person tracking
- "Met with", "called", "coffee with" → Interaction signals
- Repeated names → Stronger person signal

### Project Patterns  
- Repeated topics → Emerging project
- Research/planning language → Active interest
- "Want to", "thinking about" → Potential project

### Area Patterns
- Health observations → Health area
- Home mentions → Home area
- Work reflections → Career area

### Smart Context
- Links existing entities
- Remembers name variations
- Learns your patterns
- Suggests connections

## What It DOESN'T Do:

❌ **No Automatic Processing**
- Never creates without asking
- Never assumes interpretation
- Never moves content

❌ **No Report Dumping**
- No long reports in your daily note
- Conversations happen in the moment
- Changes are made to appropriate files

❌ **No Lost Context**
- Original note stays intact
- All changes maintain backlinks
- Nothing gets "processed away"

## Unified Creation Flow:

When discovering potential new entities, we invoke the full conversational flow of the relevant command rather than simple yes/no prompts.

### Context Extraction First
Before asking any questions, extract all relevant context:
- Previous mentions of the topic across the vault
- People mentioned in connection with it
- Related areas or projects
- Emotional tone and energy level
- Specific details (tools, timelines, goals)

### Embedded Command Invocation
For each entity type, invoke its creation flow:
- **Projects**: Use `/new-project` flow with extracted context
- **People**: Use `/new-person` flow with relationship context  
- **Areas**: Use `/new-area` flow with responsibility patterns
- **Resources**: Use `/new-resource` flow with usage context

### Full Thought Preservation
Always preserve complete context:
1. Copy entire relevant sections (not summaries)
2. Create `Daily Thoughts/` folders in projects
3. Add temporal backlinks to specific sections
4. Maintain original formatting and context

## Conversation Flow:

### For New Entities (Enhanced)
```
"I noticed [pattern with context]. Let me extract what you've shared..."
→ Show extracted context from daily note
→ Invoke full creation flow with smart defaults
→ Preserve complete thoughts in new structure
→ Create bidirectional links
```

### For Updates
```
"I found [information] about [existing entity]. Should I add this?"
→ Show exactly what will be added
→ Confirm accuracy
→ Update with permission
```

### For Ambiguous Items
```
"I'm not sure what to do with [item]. Could you help me understand?"
→ Provide options
→ Learn from response
→ Act accordingly
```

## Learning System:

The command remembers:
- Name mappings (Bob → Robert)
- Common contexts (coffee = meeting)
- Your patterns (weekly mom calls)
- Project interests (mentioned topics)

## Privacy & Respect:

- Only processes what you approve
- Asks before creating persons
- Preserves personal reflections
- Maintains thought privacy

## Examples:

```
/process-daily
```
Process today's note interactively

```
/process-daily --date "2025-01-27"
```
Process a specific date's note

## Processing Log Format:

Maintained at `.para-claude/processing-log.md`:
```markdown
# Para-Claude Processing Log

## 2025-01-31
- **Processed**: Daily/2025-01-28
- **Actions**: Created 1 project, updated 2 persons, noted 1 area observation
- **Skipped**: 1 personal reflection

## 2025-01-30
- **Processed**: Daily/2025-01-27
- **Actions**: Updated 1 area, created 1 person
```

## Implementation Notes:

- Check processing log to find oldest unprocessed note
- Default to chronological processing (oldest first)
- Always show temporal context ("3 days ago")
- Read note and analyze patterns
- Present findings conversationally
- One decision at a time
- Clear about what will happen
- Execute only with consent
- Learn from user choices
- No reports in daily notes
- Maintain conversational flow
- Update processing log after completion
- Allow breaking and resuming later