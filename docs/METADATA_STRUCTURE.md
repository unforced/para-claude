# Para-Claude Metadata Structure

This document defines the frontmatter fields used across Para-Claude to enable rich organization and navigation in Obsidian.

## Core Principles

- **Flexible, not rigid** - Use fields that serve you
- **Emergence over prescription** - Let patterns develop
- **Navigation over categorization** - Find things naturally
- **Human-readable** - Fields make sense at a glance

## Pursuit Metadata

```yaml
---
type: pursuit
status: active|paused|completed|archived
started: YYYY-MM-DD
completed: YYYY-MM-DD (when applicable)
arena: [[Arenas/Name]] (which arena this serves)
tags:
  - pursuit/active
  - pursuit/learning (or creating, building, etc.)
  - domain/specific (like tech, health, creative)
energy: high|medium|low|dormant
progress: 0-100 (percentage)
momentum: building|steady|slowing|stalled
collaborators:
  - [[Relationships/Person]]
---
```

### Key Fields Explained

- **status**: Current state of the pursuit
- **arena**: Links pursuit to the life area it serves
- **energy**: Your current enthusiasm/capacity
- **momentum**: Direction of progress
- **collaborators**: People involved in this pursuit

## Arena Metadata

```yaml
---
type: arena
status: active|dormant|archived  
established: YYYY-MM-DD
review_rhythm: daily|weekly|monthly|quarterly
last_review: YYYY-MM-DD
next_review: YYYY-MM-DD
health: thriving|flourishing|maintained|struggling|neglected
tags:
  - arena/active
  - arena/foundation (or growth, expression, connection)
focus_level: high|balanced|low
active_pursuits: 3 (count)
---
```

### Key Fields Explained

- **review_rhythm**: How often you check in
- **health**: Current state of the arena
- **focus_level**: Current attention level
- **active_pursuits**: Number of pursuits serving this arena

## Relationship Metadata

```yaml
---
type: relationship
status: active|dormant|archived
met: YYYY-MM-DD
last_interaction: YYYY-MM-DD
next_touch: YYYY-MM-DD (for planned connections)
connection_strength: strong|growing|maintained|fading
interaction_frequency: daily|weekly|monthly|occasional
tags:
  - relationship/active
  - relationship/[nature]: friend|collaborator|mentor|family|neighbor
  - context/[shared]: work|creative|community|hobby|growth
  - energy/[dynamic]: energizing|supportive|neutral|draining
important_dates:
  - birthday: MM-DD
  - anniversary: MM-DD
  - [custom]: MM-DD
shared_interests:
  - interest1
  - interest2
shared_pursuits:
  - [[Pursuits/Name]]
communication_preferences:
  - coffee|calls|texts|emails
  - mornings|evenings|weekends
---
```

### Key Fields Explained

- **connection_strength**: Quality of connection
- **interaction_frequency**: Natural rhythm
- **tags**: Flexible contexts, not rigid categories
- **energy**: How interactions typically feel
- **shared_pursuits**: Active collaborations

## Navigation Patterns

### By Status
- `status: active` - What needs attention
- `status: paused` - What's on hold
- `status: completed` - What's done

### By Energy
- `energy: high` - Where you're excited
- `energy: low` - What might need rekindling

### By Time
- `last_interaction: <2w` - Recent connections
- `next_review: <1w` - Upcoming reviews
- `started: >6mo` - Long-running pursuits

### By Health/Strength
- `health: struggling` - Arenas needing care
- `connection_strength: fading` - Relationships to nurture

### By Context Tags
- `#context/work` - Professional connections
- `#context/creative` - Creative collaborators
- `#domain/health` - Health-related pursuits

## Dataview Query Examples

### Active Pursuits by Arena
```dataview
TABLE 
  energy as "Energy",
  progress as "Progress",
  momentum as "Momentum"
FROM "Pursuits"
WHERE status = "active"
SORT arena ASC, energy DESC
```

### Relationships Needing Attention
```dataview
TABLE
  last_interaction as "Last Contact",
  connection_strength as "Strength",
  shared_interests as "Common Ground"
FROM "Relationships"  
WHERE last_interaction < date(today) - dur(30 days)
SORT last_interaction ASC
```

### Arena Health Dashboard
```dataview
TABLE
  health as "Health",
  last_review as "Last Review",
  active_pursuits as "Active Pursuits"
FROM "Arenas"
WHERE status = "active"
SORT health ASC
```

## Tag Taxonomy (Suggested)

Tags should emerge from your use, but here are patterns that work:

### Pursuit Tags
- `pursuit/learning` - Skill acquisition
- `pursuit/creating` - Making something
- `pursuit/building` - Constructing/developing
- `pursuit/exploring` - Discovery-based

### Arena Tags  
- `arena/foundation` - Health, Home, Finance
- `arena/growth` - Learning, Career, Skills
- `arena/expression` - Creative, Professional
- `arena/connection` - Relationships, Community

### Relationship Tags
- `relationship/collaborator` - Active co-creation
- `relationship/mentor` - Growth guide
- `relationship/peer` - Equal exchange
- `relationship/supporter` - Cheerleader

### Context Tags
- `context/work` - Professional
- `context/creative` - Artistic/making
- `context/community` - Neighborhood/groups
- `context/growth` - Personal development
- `context/family` - Family-related

## Evolution Pattern

### Start Simple
Just use required fields:
- type
- status  
- started/met/established

### Add as Needed
When you notice patterns:
- Add energy when tracking enthusiasm
- Add tags when grouping helps
- Add custom fields for your patterns

### Review and Refine
- Monthly: Check if fields serve you
- Quarterly: Adjust tag taxonomy
- Yearly: Major metadata evolution

## Custom Fields

Feel free to add fields that serve your life:

### Example: Pursuit with Location
```yaml
location: remote|local|hybrid
travel_required: true|false
```

### Example: Relationship with Timezone
```yaml
timezone: PST|EST|GMT
best_call_times: "mornings PST"
```

### Example: Arena with Metrics
```yaml
key_metric: "hours of sleep"
target: "8 hours"
current: "6.5 hours"
```

## Remember

Metadata serves navigation and understanding, not categorization. Use what helps you find things and understand patterns. Let your system evolve with your life.