# Para-Claude Metadata Structure

This document defines the frontmatter fields used across Para-Claude to enable rich organization and navigation in Obsidian.

## Core Principles

- **Flexible, not rigid** - Use fields that serve you
- **Emergence over prescription** - Let patterns develop
- **Navigation over categorization** - Find things naturally
- **Human-readable** - Fields make sense at a glance

## Project Metadata

```yaml
---
type: project
status: active|paused|completed|archived
started: YYYY-MM-DD
completed: YYYY-MM-DD (when applicable)
area: [[Areas/Name]] (which area this serves)
tags:
  - project/active
  - project/learning (or creating, building, etc.)
  - domain/specific (like tech, health, creative)
energy: high|medium|low|dormant
progress: 0-100 (percentage)
momentum: building|steady|slowing|stalled
collaborators:
  - [[People/Person]]
---
```

### Key Fields Explained

- **status**: Current state of the project
- **area**: Links project to the life area it serves
- **energy**: Your current enthusiasm/capacity
- **momentum**: Direction of progress
- **collaborators**: People involved in this project

## Area Metadata

```yaml
---
type: area
status: active|dormant|archived  
established: YYYY-MM-DD
review_rhythm: daily|weekly|monthly|quarterly
last_review: YYYY-MM-DD
next_review: YYYY-MM-DD
health: thriving|flourishing|maintained|struggling|neglected
tags:
  - area/active
  - area/foundation (or growth, expression, connection)
focus_level: high|balanced|low
active_projects: 3 (count)
---
```

### Key Fields Explained

- **review_rhythm**: How often you check in
- **health**: Current state of the area
- **focus_level**: Current attention level
- **active_projects**: Number of projects serving this area

## Person Metadata

```yaml
---
type: person
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
shared_projects:
  - [[Projects/Name]]
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
- **shared_projects**: Active collaborations

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
- `started: >6mo` - Long-running projects

### By Health/Strength
- `health: struggling` - Areas needing care
- `connection_strength: fading` - Relationships to nurture

### By Context Tags
- `#context/work` - Professional connections
- `#context/creative` - Creative collaborators
- `#domain/health` - Health-related projects

## Dataview Query Examples

### Active Projects by Area
```dataview
TABLE 
  energy as "Energy",
  progress as "Progress",
  momentum as "Momentum"
FROM "Projects"
WHERE status = "active"
SORT area ASC, energy DESC
```

### People Needing Attention
```dataview
TABLE
  last_interaction as "Last Contact",
  connection_strength as "Strength",
  shared_interests as "Common Ground"
FROM "People"  
WHERE last_interaction < date(today) - dur(30 days)
SORT last_interaction ASC
```

### Area Health Dashboard
```dataview
TABLE
  health as "Health",
  last_review as "Last Review",
  active_projects as "Active Projects"
FROM "Areas"
WHERE status = "active"
SORT health ASC
```

## Tag Taxonomy (Suggested)

Tags should emerge from your use, but here are patterns that work:

### Project Tags
- `project/learning` - Skill acquisition
- `project/creating` - Making something
- `project/building` - Constructing/developing
- `project/exploring` - Discovery-based

### Area Tags  
- `area/foundation` - Health, Home, Finance
- `area/growth` - Learning, Career, Skills
- `area/expression` - Creative, Professional
- `area/connection` - Relationships, Community

### Person Tags
- `person/collaborator` - Active co-creation
- `person/mentor` - Growth guide
- `person/peer` - Equal exchange
- `person/supporter` - Cheerleader

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