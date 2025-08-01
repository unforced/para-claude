# /new-area - Establish a life area

Interactively create a new area where life happens, understanding what you want to cultivate in this space.

## Usage
```
/new-area "Area Name"
```

## Interactive Process:

1. **Explores the area's role** in your life
2. **Defines what flourishing looks like** here
3. **Identifies supporting projects** and people
4. **Designs maintenance rhythm** that fits
5. **Creates simple structure** to begin

## Questions Asked:

### Area Purpose
- Why does this area matter to you?
- What does success look like here?
- What would neglect cost you?

### Standards & Rhythms
- What standards will you maintain?
- How often does this need attention?
- What rituals support this area?

### Connections
- Which projects serve this area?
- Who helps you maintain this?
- What areas does this support?

## Customized README Template:

Based on your answers, creates a living document with rich frontmatter:

```markdown
---
type: area
status: active
established: [[Daily/YYYY-MM-DD]]
review_rhythm: [daily|weekly|monthly|quarterly]
last_review: [[Daily/YYYY-MM-DD]]
next_review: [[Daily/YYYY-MM-DD]]
health: flourishing
tags:
  - area/active
  - area/[foundation|growth|expression|connection]
  - focus/[specific aspects]
focus_level: high
active_projects: 0
---

# [Area Name]

## The Heart of This Area
[Why this space matters - from your answer]

## Flourishing Looks Like
- [Personalized standard 1]
- [Personalized standard 2]  
- [Personalized standard 3]
[Based on what success means to you]

## Current Season
[Initial state/energy/focus]

## Active Projects
- [[Projects/...]] - [How it serves this area]

## Support System
- [[Persons/Person]] - [Their role here]

## Rituals & Rhythms
[Daily/Weekly/Monthly practices you mentioned]

## Area Notes
- [[Daily/YYYY-MM-DD]] - Established: [Initial intentions]
```

## Living Review Process:

Reviews become part of the story:
```markdown
## Area Notes
- [[Daily/2025-02-28]] - Monthly check: [What's alive, what needs care]
- [[Daily/2025-01-28]] - Established: [Original vision]
```

## Interactive Example:

```
You: /new-area "Creative Work"

Claude: Let's establish this area thoughtfully.

What role does Creative Work play in your life?
1. 💡 Self-expression - where I become myself
2. 💼 Professional identity - how I make a living
3. 🌱 Growth space - where I challenge myself
4. 🎁 Gift to world - my contribution
5. 🎭 Multiple roles: ___

You: 1 and 4

Claude: Beautiful - creation as both self-discovery and service.

What does flourishing look like in this area?
(Share 2-3 standards you want to maintain)

You: Regular creative practice, finishing projects, sharing work

Claude: Those are powerful standards. 

How often does this area need your attention?
1. Daily - creativity is life force
2. Weekly - regular creative sessions
3. Bi-weekly - consistent check-ins
4. Monthly - periodic deep dives

You: 2

Claude: Weekly rhythm it is.

Any current projects serving this area?
(List projects or 'none yet')

You: Write Novel, Launch Podcast

Claude: Excellent! I see the creative ecosystem forming.

Who supports your creative work?
(Names or 'exploring this')

You: Sarah (creative partner), Local writing group

Claude: Creating your Creative Work area...

[Creates customized README with frontmatter including:]
- Tags: #area/expression #focus/creativity #focus/professional #growth/artistic
- Review rhythm: Weekly (from your answer)
- Health: Starting as "flourishing" with high energy
- Active projects: 2 (novel and podcast)

I've established this area with:
- Focus on self-expression and contribution
- Weekly rhythm for creative sessions  
- Links to your novel and podcast projects
- Connection to Sarah and writing group

Would you like suggestions for rituals that support creative work?
```

## Tag Emergence for Areas:

Based on how you describe the area, natural tags emerge:

### Foundation Areas
- "Health" → #area/foundation #focus/physical #focus/mental
- "Home" → #area/foundation #focus/environment #focus/sanctuary
- "Finances" → #area/foundation #focus/security #focus/resources

### Growth Areas
- "Learning" → #area/growth #focus/curiosity #focus/skills
- "Career" → #area/growth #focus/professional #focus/impact
- "Personal Development" → #area/growth #focus/self #focus/habits

### Expression Areas
- "Creative Work" → #area/expression #focus/creativity #focus/art
- "Writing" → #area/expression #focus/words #focus/communication
- "Making" → #area/expression #focus/craft #focus/building

### Connection Areas
- "Family" → #area/connection #focus/family #focus/roots
- "Community" → #area/connection #focus/service #focus/belonging
- "Friendships" → #area/connection #focus/social #focus/support

## Growth Pattern:

**Month 1**: Just README with standards and occasional notes
**Month 6**: Multiple projects linked, review history building
**Month 12**: Complex enough → run `/expand "Areas/Health"`
**Result**: Now has Reviews/ folder, Metrics.md, etc.

## Common Areas:

### Personal Foundation
- **Health** - Physical, mental, emotional wellbeing
- **Home** - Your sanctuary and living space
- **Finances** - Resources and security

### Expression & Growth
- **Creative Work** - Where you create and express
- **Learning** - Continuous growth and curiosity
- **Career** - Professional contribution

### Connection & Meaning
- **Family** - Close family persons
- **Community** - Broader connections
- **Spirituality** - Meaning and transcendence

### Custom Areas
Don't feel limited! Create areas like:
- **Adventure** - Travel and exploration
- **Play** - Fun and recreation
- **Service** - Giving back

## Design Principles:

### Area vs. Project
- Areas are ongoing stages of life
- Projects have completion points
- Areas spawn projects
- Projects serve areas

### Interactive Creation
- Understand the deeper purpose
- Connect to existing life structure
- Design sustainable rhythms
- Link to support systems

### Living Documents
- README grows with area notes
- Reviews add to the story
- Standards evolve with life
- Connections deepen over time

## Implementation Notes:

- Guide through questions conversationally
- Create rich, personalized README
- Link to mentioned projects/persons
- Add note: "Established area: [[Areas/Name]] - [purpose]"
- Suggest rituals based on area type
- Offer to connect related areas