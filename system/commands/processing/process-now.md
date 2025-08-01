# /process-now - Real-time processing for today's note

Process specific snippets or sections from today's daily note while you're still working in it.

## Usage
```
/process-now [--update-daily-links]
```
or
```
/process-now "specific text to process" [--update-daily-links]
```

Options:
- `--update-daily-links` - Add wiki-links in today's note (off by default)

## Philosophy
- **In-the-moment** - Process thoughts as they emerge
- **Selective** - Choose what to process, leave the rest
- **Non-invasive** - Doesn't modify today's note
- **Quick capture** - Transform thoughts into structure immediately

## What It Does

Unlike `/process-daily` which processes complete notes, `/process-now`:
- Works with today's actively-edited note
- Processes selected portions only
- Creates entities without marking the note as processed
- Perfect for capturing insights as they happen

## Interactive Process with Unified Flow:

### Without Text Argument
```
You: /process-now

Claude: I'll help you process something from today's note.

Looking at your note from today [[Daily/2025-08-01]]...

I see several items we could process:
1. "Meeting with Sarah about design project" 
2. "Idea: meditation app for developers"
3. "Need to review Q3 goals"
4. "Mom's birthday next week"

Which would you like to process now? (number or paste different text)

You: 2

Claude: 🎯 **Potential New Project: Meditation App**

I found your idea: "meditation app for developers"

Let me help you capture this properly. What draws you to building a meditation app for developers?

1. 🎯 Personal need - want better focus while coding
2. 🏗️ Market opportunity - noticed a gap
3. 🧘 Passion project - combining interests
4. 💡 Technical exploration - try new frameworks
5. ✨ Other: ___

You: 1 and 3

Claude: Great combination - personal need and passion! 

For a meditation app for developers, what would make it special?
- IDE integration?
- Pomodoro-style meditation breaks?
- Code-focused breathing exercises?
- Something else?

You: Pomodoro-style breaks with quick mindfulness exercises

Claude: Perfect! I'll create [[Projects/DevMeditate]] with:
- Personal need + passion project motivation
- Focus on Pomodoro-style meditation breaks
- Developer-specific mindfulness exercises

I'll also:
- Add backlink to today's note [[Daily/2025-08-01#meditation-app-idea]]
- Copy your full idea to the project folder
- Set up initial feature list based on your vision

Ready?

You: Yes

Claude: ✓ Created [[Projects/DevMeditate]] with your vision
✓ Added temporal backlink: "Conceived on [[Daily/2025-08-01#meditation-app-idea]]"
✓ Saved full context to `Projects/DevMeditate/Daily Thoughts/2025-08-01 Initial Idea.md`
✓ Created initial feature list with Pomodoro integration

Today's note remains unchanged (use --update-daily-links to add wiki-links).
```

### With Text Argument and Context Extraction
```
You: /process-now "Started learning Rust - really enjoying the ownership model. Planning to rebuild my parser in it."

Claude: 🎓 **Learning Journey: Rust**

I see you're diving into Rust! Let me extract the context:
- "enjoying the ownership model" - technical interest
- "planning to rebuild my parser" - practical application

This could be a learning project. Let me understand better - what's driving this Rust exploration?

1. 🚀 Performance needs - parser needs speed
2. 🛡️ Safety requirements - prevent memory bugs
3. 📚 Skill growth - expanding expertise
4. 🔧 Better tooling - Rust ecosystem benefits
5. ✨ Other: ___

You: 1 and 3

Claude: Excellent! Performance optimization and skill growth - practical learning at its best.

I notice you mentioned rebuilding your parser. Is this:
- Part of an existing project?
- A new learning project?
- Replacing current implementation?

You: It's for my Markdown parser in the Para-Claude project

Claude: Ah! This connects to [[Projects/Para-Claude]]. Let me set this up properly:

I'll create [[Projects/Learn Rust - Parser Rebuild]] as a sub-project with:
- Performance + skill growth motivation  
- Connected to [[Projects/Para-Claude]]
- Focus on parser implementation
- Tracking your ownership model insights

I'll also note in Para-Claude that you're exploring Rust for the parser.

Ready?

You: Yes

Claude: ✓ Created [[Projects/Learn Rust - Parser Rebuild]] with learning goals
✓ Linked as sub-project of [[Projects/Para-Claude]]
✓ Added note: "Exploring Rust for parser performance" to Para-Claude
✓ Temporal backlink: "Started [[Daily/2025-08-01#learning-rust]]"
✓ Preserved your enthusiasm about the ownership model

Would you like me to create a [[Resources/Rust Ownership Model]] to track what you're learning?
```

## Use Cases:

### Quick Project Capture
When an idea strikes and you want to capture it properly:
```
/process-now "Podcast idea: interviewing local entrepreneurs"
```

### Relationship Updates
When something important happens:
```
/process-now "Sarah offered to mentor me on design"
```

### Resource Discovery
When you find something valuable:
```
/process-now "Found amazing article on PKM systems"
```

### Area Insights
When you notice patterns:
```
/process-now "Been meditating daily for two weeks now"
```

## Differences from /process-daily:

| Feature | /process-daily | /process-now |
|---------|---------------|--------------|
| Default target | Yesterday's note | Today's note |
| Processing scope | Entire note | Selected portions |
| Marks as processed | Yes | No |
| Best for | Complete review | Real-time capture |
| Processing log | Full entry | Lightweight note |

## Smart Features:

- **Duplicate awareness** - Won't recreate existing projects/people
- **Context preservation** - Links back to daily note
- **Temporal clarity** - Always knows it's processing today
- **Selective processing** - Only acts on what you specify
- **Smart linking** - Always creates backlinks, optionally updates daily note

## Linking Behavior:

### Default (No Flag)
- ✅ Created entities link back to today's note with anchors
- ✅ Full context copied to entity folders
- ❌ Today's note remains unchanged
- Perfect for keeping daily notes clean

### With --update-daily-links
- ✅ All default linking PLUS
- ✅ Updates today's note with wiki-links inline
- ✅ Preserves original text using aliases
- Perfect for building connected graph immediately

Example of daily note update:
```markdown
Before: Started learning Rust - really enjoying the ownership model
After:  Started learning [[Projects/Learn Rust|Rust]] - really enjoying the ownership model
```

## Examples:

### During a Meeting
```
*Taking notes in daily page during meeting*

You: /process-now "Project Sunshine - Sarah will lead design, I'll handle backend"

Claude: I see you're defining roles for Project Sunshine.

Should I:
1. Create/update [[Projects/Project Sunshine]] with these roles
2. Update [[People/Sarah]] with her design leadership role
3. Both of the above
4. Just capture this info for later

You: 3

Claude: Done! Updated both the project and Sarah's profile with today's information.
```

### Capturing an Insight
```
*Writing in daily note*

You: /process-now "Realized my energy peaks at 10am - should schedule creative work then"

Claude: Great self-awareness about your energy patterns!

This seems like it belongs in an area. Should I add this insight to:
1. [[Areas/Productivity]]
2. [[Areas/Health & Energy]]
3. Create a new area for personal rhythms
4. Just keep it in today's note

You: 2

Claude: Added your energy pattern insight to [[Areas/Health & Energy]].
```

## Integration with Daily Workflow:

1. **Morning**: Start your daily note
2. **Throughout the day**: Use `/process-now` for important items
3. **Next morning**: Run `/process-daily` on yesterday's complete note

This gives you both real-time capture and thoughtful review.

## Remember:

This command is for when inspiration strikes or important information emerges. It's the difference between "I should remember this" and actually capturing it in your system while the context is fresh.