# /log-interaction - Quick person update

Quickly log an interaction with someone, creating their person file if needed.

## Usage
```
/log-interaction "Person Name" "What happened"
```

## What this command does:

1. **Checks if person exists** - creates if missing
2. **Adds interaction** to their README.md
3. **Links to today's daily note** for context
4. **Updates daily note** with person link
5. **Maintains chronological order** of interactions

## Philosophy
- **Friction-free capture** - Log interactions in seconds
- **Build history naturally** - Each interaction adds depth
- **Context preserved** - Links maintain full story
- **People-first design** - Persons are infrastructure

## Examples:

### Quick Coffee Log
```
/log-interaction "Sarah Chen" "Coffee chat about her new design role"
```
Result in `Persons/Sarah Chen/README.md`:
```markdown
## Interactions
- [[Daily/2025-01-28]] - Coffee chat about her new design role
```

### Phone Call
```
/log-interaction "Mom" "Weekly call - she's planning garden renovation"  
```

### Professional Meeting
```
/log-interaction "John Smith" "Project kickoff meeting, he'll lead backend"
```

### Quick Text Exchange
```
/log-interaction "Alex Kim" "Texted about weekend hiking plans"
```

## Auto-Creation

If person doesn't exist, creates minimal README:
```markdown
# Person Name

Met/Connected: [[Daily/2025-01-28]]
Context: [Interaction context]

## About
[To be filled]

## Interactions
- [[Daily/2025-01-28]] - [Your interaction note]
```

## Batch Processing

After a busy day, quickly log multiple interactions:
```
/log-interaction "Sarah" "Lunch meeting about Q2 planning"
/log-interaction "David" "Debugging session on API issues"  
/log-interaction "Mom" "Called to wish happy birthday"
/log-interaction "Lisa" "Introduced her to Tom for potential collaboration"
```

## Smart Features:

- **Name matching**: Handles variations (Bob = Robert)
- **Context extraction**: Pulls out key topics
- **Person hints**: Suggests adding to areas
- **Commitment tracking**: Highlights promises made
- **Follow-up flags**: Notes requiring action

## Integration Ideas:

### From Daily Note
Write naturally, then process:
```
Had coffee with Sarah - she's excited about the new role
TODO: Send Sarah the design resources I mentioned
```
Then: `/log-interaction "Sarah" "Coffee - excited about new role, promised design resources"`

### Meeting Notes
After meetings:
```
/log-interaction "Team" "Sprint planning - assigned 3 tasks"
/log-interaction "PM" "Discussed timeline concerns"
```

### Commitment Tracking
When you make promises:
```
/log-interaction "John" "Offered to review his portfolio - DUE: Friday"
```
This could auto-create a task linked to the person.

## Privacy Notes:

- Log what helps you be thoughtful
- Focus on your interactions, not private details
- Think "interaction journal" not "surveillance"
- If hesitant to write it, don't

## Implementation Notes:

- Fuzzy match on names to find existing persons
- Support first-name-only for frequent contacts
- Auto-append to Interactions section
- Handle multiple interactions per day gracefully
- Add interaction count to daily summary
- Consider extracting commitments/todos
- Maybe analyze sentiment/person health over time