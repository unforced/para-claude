# /process-daily - Enhanced with Unified Creation Flow

An enhanced version of daily processing that invokes rich creation flows for new entities.

## Key Enhancement: Embedded Command Flows

When discovering potential new entities, instead of simple yes/no prompts, we invoke the full conversational flow of the relevant command (new-project, new-person, etc.) with context awareness.

## Enhanced Pattern Recognition

### For Projects
When recognizing project patterns:
1. Extract all relevant context from the daily note
2. Present the context to the user
3. Invoke the `/new-project` conversational flow
4. Preserve full thoughts in project folder

### Example Flow

```
You: /process-daily

Claude: 📅 **Processing: Daily/2025-08-01**

I'll review this note and help you process it thoughtfully.

[Reads note]

I noticed something interesting:

🎯 **Potential New Project: Para-Claude GUI**
You wrote: "I'm seeing that I will be able to create a good GUI a lot quicker 
than I might have anticipated, because I can point Claude Code towards the 
Claudia code base..."

This sounds like a concrete project emerging. Let me help you set it up thoughtfully.

From your note, I can see:
- You want to leverage the Claudia codebase
- Goal is a desktop app with Tauri that can migrate to mobile
- Vision includes running on MacBook and Daylight device
- Would integrate with your full second brain context

What draws you to building this GUI now?
1. 🚀 Technical readiness - the pieces are falling into place
2. 🎯 Personal need - want unified interface for your workflow
3. 💡 Product vision - could help others like at Boulder Builders
4. 🔧 Learning opportunity - explore Tauri and desktop development
5. ✨ Other: ___

You: 1, 2, and 3!

Claude: Excellent - a perfect storm of readiness, need, and vision!

I notice this would support your [[Projects/Para-Claude]] work. 
Should I link them?

You: Yes

Claude: Who might collaborate or support this?
(I saw Boulder Builders showed interest - anyone specific?)

You: Not yet, but tag it as seeking collaborators

Claude: What development rhythm works for you?
1. Daily focused sessions (momentum-based)
2. Weekly sprints (structured progress)
3. Feature-based milestones (ship when ready)
4. Exploration mode (learn as you go)

You: 4 for now, might shift to 3 later

Claude: Perfect! I'll create this project with:
- Technical readiness + personal need + product vision
- Linked to [[Projects/Para-Claude]]
- Exploration mode (can shift to milestones later)
- Tagged as seeking collaborators
- Full technical context from your notes

I'll copy your entire GUI vision section to the project folder and add
a backlink to today's note. Ready?

You: Yes

Claude: ✓ Created [[Projects/Para-Claude GUI]] with rich context
✓ Linked to parent [[Projects/Para-Claude]]
✓ Copied full GUI vision to `Projects/Para-Claude GUI/Vision/Initial Thoughts.md`
✓ Added backlink: "Emerged from [[Daily/2025-08-01#para-claude-gui-vision]]"
✓ Set exploration mode with note about future milestone shift

I also noticed you mentioned wanting better project structure where you can
"drop the whole note related to a project directly into that project's folder."
Should we use this new project to test that pattern?

You: Yes! Let's do that

Claude: Great! I've created `Projects/Para-Claude GUI/Daily Thoughts/` 
where we can collect full excerpts from daily notes about this project.
This preserves your complete thinking while building rich project context.

[Continues with other patterns found...]
```

## Context Extraction Before Questions

The enhanced flow extracts context BEFORE asking questions:

```python
# Pseudo-code for context extraction
project_context = {
    "mentions": find_all_mentions(topic, vault),
    "people": extract_people_involved(current_note),
    "areas": identify_related_areas(current_note),
    "emotions": detect_energy_level(current_note),
    "specifics": extract_technical_details(current_note),
    "timeline": extract_timeline_hints(current_note)
}
```

## Intelligent Question Adaptation

Questions adapt based on extracted context:
- If collaborators mentioned → "Should I link [Person] as collaborator?"
- If timeline found → "You mentioned [timeline] - is that your target?"
- If energy high → "This seems to have high energy - ready to dive in?"
- If technical details → "I see you want to use [technology] - anything else?"

## Full Thought Preservation

Always preserve complete context:
1. Copy entire relevant section (not summary)
2. Create subfolder structure if needed
3. Add temporal backlinks
4. Maintain original formatting

## Graceful Fallbacks

If user wants simple mode:
```
Claude: [Shows rich context and questions]

You: Just create it simply for now

Claude: No problem! Created [[Projects/Name]] with basic structure. 
        You can always run /expand later to add more detail.
```

## The Key Difference

**OLD**: "Want to create [[Projects/X]]?" → Yes → Basic file created

**NEW**: Rich contextual flow → Thoughtful questions → Connected structure → Full context preserved

This makes every project creation as rich as if you'd run `/new-project` directly, but with the added benefit of having the daily note context right there to inform the process.