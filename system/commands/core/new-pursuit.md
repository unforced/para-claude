# /new-pursuit - Begin a meaningful pursuit

Interactively create a new pursuit by understanding your deeper motivation and designing for success.

## Usage
```
/new-pursuit "Pursuit Name"
```

## Interactive Process:

1. **Understands your why** through thoughtful questions
2. **Explores connections** to people and arenas
3. **Designs for success** based on your style
4. **Creates simple structure** (just README.md)
5. **Sets up support** through links and context

## Questions Asked:

### Core Motivation
- What draws you to this pursuit?
- What would success look like?
- What would completion mean to you?

### Connections
- Which arena does this support?
- Who might join or support you?
- What pursuits does this relate to?

### Design
- Daily practice or project sprints?
- Solo journey or collaborative?
- Tracked by outcomes or time?

## Customized README Template:

Based on your answers, creates a personalized structure with rich frontmatter:

```markdown
---
type: pursuit
status: active
started: [[Daily/YYYY-MM-DD]]
arena: [[Arenas/[Arena Name]]]
tags:
  - pursuit/active
  - pursuit/[type: learning|creating|building|exploring]
  - domain/[specific area]
energy: high
progress: 0
momentum: building
style: [daily-practice|sprint-based|milestone-driven]
collaborators:
  - [[Relationships/Person]]
---

# [Pursuit Name]

## The Calling
[Your deeper reason for this pursuit]

## Vision of Success
[What completion looks/feels like - customized to your answer]

## Milestones
- [ ] [Personalized based on pursuit type]
- [ ] [Matched to your timeline]
- [ ] [Connected to your why]

## Support System
- [[Relationships/Person]] - [How they're involved]
- [[Pursuits/Related]] - [Connection]

## Resources
- [Key resource based on pursuit type]
- [Learning material or tool]

## Rhythm
[Daily practice notes | Sprint planning | Progress tracking]
[Customized based on your preferred style]

## Journey Log
- [[Daily/YYYY-MM-DD]] - The beginning: [Your initial energy/thoughts]
```

## Interactive Example:

```
You: /new-pursuit "Write Novel"

Claude: I'd love to help you set up this pursuit thoughtfully.

What draws you to writing a novel?
1. 🎨 Creative expression - stories demanding to be told
2. 🎯 Professional goal - establish author career
3. 📚 Personal challenge - prove I can do it
4. 💖 Legacy - share wisdom/experience
5. 🌍 Other: ___

You: 1

Claude: Beautiful! Creative expression is such a powerful driver.

What would success feel like for this novel?
a) Holding the finished book
b) Seeing readers connect with it
c) The daily joy of writing
d) Personal transformation through the process
e) All of the above

You: c and d

Claude: I love that - focusing on the journey itself.

Who in your life might support this pursuit?
(Type names or 'none' or 'not sure')

You: Sarah (she's a writer), Mom (biggest cheerleader)

Claude: Wonderful support system! 

What rhythm would work for you?
1. Daily writing practice (even 15 minutes)
2. Weekly writing sessions (longer blocks)
3. Sprint-based (intensive periods)
4. Milestone-driven (chapters/sections)

You: 1

Claude: Perfect! Creating your Novel pursuit with daily practice focus...

[Creates customized README based on all answers]

I've also:
- Linked to [[Relationships/Sarah]] and [[Relationships/Mom]]
- Added to [[Arenas/Creative Work]] (created if needed)
- Set up for daily practice tracking
- Noted this is about joy and transformation

Would you like me to create a CLAUDE.md for writing support?
```

## Design Philosophy:

### Start with Why
- Motivation drives structure
- Values inform success metrics
- Purpose shapes practice

### Connect Everything
- Link to supporting arenas
- Connect with people
- Reference related pursuits

### Honor Your Style
- Daily practice vs. sprints
- Solo vs. collaborative
- Process vs. outcome focus

### Grow Naturally
- Begin with energized simplicity
- Add structure as patterns emerge
- Use `/expand` when ready

## Implementation Notes:

- Ask questions one at a time, conversationally
- Customize README based on all answers
- Create arena if mentioned and doesn't exist
- Link to relationships if mentioned
- Add creation note: "Started pursuit: [[Pursuits/Name]] - [why]"
- Generate initial energy/excitement in first log entry
- Suggest CLAUDE.md for pursuits needing AI support
- Keep the interaction energizing, not overwhelming