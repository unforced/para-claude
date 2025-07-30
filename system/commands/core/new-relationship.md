# /new-relationship - Begin tracking a meaningful connection

Interactively create a relationship file to intentionally cultivate connections with people.

## Usage
```
/new-relationship "Person Name"
```

## Interactive Process:

1. **Understands the connection** through conversational questions
2. **Explores shared contexts** without forcing categories
3. **Suggests relevant tags** based on your answers
4. **Creates rich frontmatter** for organization
5. **Sets up for natural growth** through interactions

## Philosophy
- **People deserve intentionality** - Track connections like projects
- **Flexible, not categorical** - Use tags that fit your life
- **Context over categories** - How you connect matters more than labels
- **Privacy first** - Only track what helps you be present

## Questions Asked:

### Connection Context
- How do you know this person?
- What contexts do you share?
- What brought you together?

### Interaction Patterns
- How do you usually connect?
- What rhythm feels right?
- What helps you stay in touch?

### Shared Ground
- What interests do you share?
- Which pursuits might involve them?
- What arenas connect you?

## Dynamic README Template:

```markdown
---
type: relationship
status: active
met: [[Daily/YYYY-MM-DD]]
last_interaction: [[Daily/YYYY-MM-DD]]
connection_strength: growing
tags:
  - relationship/active
  - relationship/[suggested contexts like: collaborator, mentor, friend, neighbor]
  - context/[specific contexts like: work, hobby, community]
important_dates:
  - birthday: 
shared_interests:
  - [Interest from conversation]
communication_preferences:
  - [Their preferred way to connect]
---

# [Person Name]

## About
[What you learn about them]

## Our Connection
[How you know each other - from your answers]

## Shared Context
- [Specific contexts you mentioned]
- [Common interests discussed]
- [Shared pursuits or arenas]

## Important to Remember
- [Something they care about]
- [Key preference or need]

## Interaction Patterns
- **Usual Rhythm**: [Based on your answer]
- **Best Medium**: [Coffee, calls, texts - their preference]

## Recent Interactions
- [[Daily/YYYY-MM-DD]] - First tracked: [Context of connection]
```

## Interactive Example:

```
You: /new-relationship "Sarah Chen"

Claude: I'd love to help you track this connection thoughtfully.

How do you know Sarah?

You: We met at a design conference last year, now we collaborate on projects

Claude: Great! A creative collaboration. 

What contexts do you share with Sarah? (Select all that apply)
1. 🎨 Creative/Design work
2. 💼 Professional projects  
3. 🤝 Business partnership
4. 📚 Learning together
5. 🌟 Mentorship
6. Other: ___

You: 1, 2, 4

Claude: Wonderful mix of creativity and growth!

How do you usually connect with Sarah?
- Coffee meetups
- Video calls
- Project work sessions
- Casual texts
- Other?

You: Coffee meetups and project work sessions mostly

Claude: Perfect. How often do you typically connect?

You: Usually every 2-3 weeks for coffee, more often when we have active projects

Claude: Creating Sarah's relationship file...

I've set up tracking with:
- Tags: #relationship/collaborator #context/design #context/creative #learning-partner
- Interaction rhythm noted as bi-weekly coffee + project-based
- Added to your Creative Work arena
- Ready to log your shared projects

Would you like to add any important dates (birthday, work anniversary)?
```

## Tag Suggestions Based on Context:

The command suggests natural tags based on how you describe the relationship:

### Professional Contexts
- "colleague" → #relationship/colleague #context/work
- "mentor" → #relationship/mentor #growth/professional
- "client" → #relationship/client #context/business
- "collaborator" → #relationship/collaborator #context/projects

### Personal Contexts  
- "friend from hobby" → #relationship/friend #context/[hobby]
- "neighbor" → #relationship/neighbor #context/community
- "gym buddy" → #relationship/friend #context/fitness
- "book club" → #relationship/friend #context/reading

### Growth Contexts
- "accountability partner" → #relationship/growth-partner
- "study buddy" → #relationship/learning-partner
- "creative collaborator" → #relationship/collaborator #context/creative

### Multi-Context (most realistic)
- "Friend who became business partner" → Multiple relevant tags
- "Colleague who shares hobbies" → Both work and personal tags
- "Mentor who became friend" → Evolution captured in tags

## Interaction Patterns:

After meetings/calls, update the relationship:
```markdown
## Interactions
- [[Daily/2025-01-28]] - Coffee chat, discussed her new design role
- [[Daily/2025-01-15]] - Helped with portfolio review
- [[Daily/2024-12-20]] - Holiday party at her place
```

## Growth Pattern:

**Week 1**: Just name and how you met
**Month 1**: Added birthday, key interests
**Month 6**: Rich interaction history
**Year 1**: Deep understanding of connection patterns

When complex → `/expand "Relationships/Sarah Chen"` for:
- Separate interaction log
- Shared projects tracking
- Gift ideas list
- Professional collaboration notes

## Privacy Guidelines:

✅ DO Track:
- How you met
- Shared interests
- Important dates
- Your interactions
- What you discussed
- Commitments made

❌ DON'T Track:
- Private information they haven't shared openly
- Gossip or judgments
- Information that would embarrass if seen
- Anything you wouldn't want tracked about you

## Implementation Notes:

- Check if relationship already exists
- Support variations of names (nicknames, formal names)
- Add to daily note: "Created relationship: [[Relationships/Person Name]]"
- Consider prompting for birthday/important dates
- Tag appropriately for relationship reviews
- Maybe suggest adding to relevant Area (e.g., "Family" area)