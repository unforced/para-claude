# /expand - Thoughtfully grow your structure

Interactively expand a README into a richer structure based on how the item has evolved and your future intentions.

## Usage
```
/expand "Type/Name"
```

## Interactive Process:

1. **Analyzes your README** to understand patterns
2. **Asks clarifying questions** about your needs
3. **Suggests appropriate structure** based on content
4. **Lets you customize** what to create
5. **Explains the benefits** of each addition
6. **Creates only what serves you**

## When to Expand:

Expand when you notice:
- Scrolling through README to find things
- Multiple topic sections getting mixed
- Need for specialized files (tasks, meeting notes)
- Collaboration requiring more structure
- Want project-specific AI assistance

## Expansion Patterns:

### Project Expansion
```
Before:
Projects/Learn Spanish/
└── README.md (getting long)

After:
Projects/Learn Spanish/
├── README.md (now a hub)
├── CLAUDE.md (AI assistance)
├── Notes/
│   ├── Progress Log.md
│   └── Resources.md
├── Tasks.md
└── Vocabulary.md
```

### Area Expansion
```
Before:
Areas/Health/
└── README.md (many reviews)

After:
Areas/Health/
├── README.md (overview)
├── CLAUDE.md
├── Reviews/
│   ├── 2025-Q1.md
│   └── 2025-Q2.md
├── Metrics.md
└── Routines.md
```

### Relationship Expansion
```
Before:
Relationships/Sarah Chen/
└── README.md (many interactions)

After:
Relationships/Sarah Chen/
├── README.md (overview)
├── Interactions/
│   └── 2025.md
├── Projects Together.md
└── Notes.md
```

## README Transformation:

### Before Expansion:
```markdown
# Learn Spanish

[... 200 lines of mixed content ...]
```

### After Expansion:
```markdown
# Learn Spanish

Started: [[Daily/2025-01-01]]
Status: Active
Expanded: [[Daily/2025-01-28]]

## Overview
[Brief description]

## Quick Links
- [[Tasks]] - Current action items
- [[Notes/Progress Log]] - Learning journey
- [[Notes/Resources]] - Apps, books, courses
- [[Vocabulary]] - Words I'm learning

## Recent Updates
- [[Daily/2025-01-28]] - Expanded structure, 500 words learned
- [[Daily/2025-01-20]] - Started conversation practice

## AI Assistance
See [[CLAUDE.md]] for project-specific help with Spanish learning.
```

## CLAUDE.md Template:

```markdown
# AI Assistance for [Name]

This file provides context for AI tools when working on this [project/area/relationship].

## Context
[What is this and why it matters]

## Current Focus
[What you're working on now]

## Useful Commands
- Help me practice Spanish conversations
- Review my vocabulary list for common patterns
- Suggest next learning steps based on progress

## Style Preferences
[How you want AI to interact on this topic]

## Don't Do
[Things to avoid]
```

## Interactive Examples:

### Expanding a Pursuit
```
You: /expand "Pursuits/Learn Spanish"

Claude: I've analyzed your Spanish learning pursuit. You have:
- 23 progress updates over 2 months
- 5 mentioned resources
- 2 practice partners noted
- Weekly practice pattern

What would help you most right now?

1. 📖 Study Materials - Organize resources and notes
2. 📋 Practice Log - Track sessions and progress  
3. 👥 Partner Notes - Coordinate with practice partners
4. 🎯 Goals & Milestones - Structure your journey
5. 🤖 CLAUDE.md - AI assistance for practice
6. 🎨 Custom structure: ___

You: 1, 2, 5

Claude: Great choices! I'll create:
- Study Materials/ for your resources
- Practice Log.md for tracking progress
- CLAUDE.md for Spanish practice assistance

I'll also extract relevant sections from your README.
Would you like the Practice Log to be:
a) Daily entries
b) Weekly summaries  
c) Session-based

You: c

Claude: Perfect! Creating session-based practice log...
[Creates structure]
```

### Expanding an Arena
```
You: /expand "Arenas/Health"

Claude: Your Health arena shows:
- Monthly reviews for 6 months
- Focus on exercise, nutrition, sleep
- Several linked pursuits

This arena seems well-maintained! Consider:

1. 📈 Metrics.md - Track key health indicators
2. 🔄 Routines.md - Document what works
3. 📅 Review Archive/ - Preserve past insights
4. 🎯 Active Pursuits.md - Link health goals
5. 📝 Experiments.md - Track what you're trying

What matches your needs?
```

### Expanding a Relationship
```
You: /expand "Relationships/Sarah Chen"

Claude: Your connection with Sarah includes:
- 47 interactions over 18 months
- Professional + personal contexts
- 3 shared pursuits
- Regular coffee meetings

How would you like to deepen this tracking?

1. 📅 Interaction Log/ - Archive conversations
2. 🎁 Important Dates.md - Never forget
3. 🤝 Shared Pursuits.md - Collaboration space
4. 💡 Gift Ideas.md - Thoughtful giving
5. 📝 Our Story.md - Relationship journey

Remember: Only track what helps you be a better friend.
```

## Smart Extraction:

The command intelligently extracts sections:
- Headers with content → Separate files
- Task lists → Tasks.md
- Date-prefixed entries → Chronological files
- Resource links → Resources file
- Metrics/numbers → Metrics file

## Design Principles:

### Ask First, Build Second
- Analyze existing content patterns
- Present options based on actual use
- Explain benefits of each structure
- Let user choose what serves them
- Avoid premature complexity

### Intelligent Suggestions
- For Pursuits: Based on project patterns
- For Arenas: Based on maintenance needs
- For Relationships: Based on interaction depth
- Custom options always available

### Preserve Intent
- Keep original README as hub
- Maintain all existing links
- Extract content intelligently
- Add expansion note to daily
- Create meaningful CLAUDE.md

## Questions to Ask:

### For Pursuits
- What phase is this pursuit in?
- Who else is involved?
- What resources do you reference?
- How do you track progress?

### For Arenas
- What standards matter here?
- How often do you review?
- What patterns have emerged?
- Which pursuits support this?

### For Relationships
- What contexts do you share?
- How do you prefer to connect?
- What would deepen this bond?
- What helps you show up better?