# /weekly-review - Weekly life review

Review your projects, areas, and persons to celebrate progress and plan the week ahead.

## Usage
```
/weekly-review [--week "YYYY-WW"] [--include-archives] [--generate-tasks]
```

## What this command does:

1. **Reviews your life** across:
   - Active projects and their progress
   - Areas and how they're flourishing
   - Persons and recent connections
   - Daily notes for unprocessed gems

2. **Identifies patterns**:
   - What's moving forward
   - What's stuck
   - Who you've connected with
   - Emerging themes in daily notes

3. **Suggests actions**:
   - Projects to focus on
   - Areas needing attention
   - People to reconnect with
   - Ideas worth exploring

4. **Plans ahead**:
   - This week's priorities
   - Persons to nurture
   - Areas to tend
   - Time for what matters

## Weekly Review Template:

```markdown
# Weekly Review - YYYY Week WW

Period: YYYY-MM-DD to YYYY-MM-DD
Previous: [[Reviews/Weekly/YYYY-WW]]
Next: [[Reviews/Weekly/YYYY-WW]]

## 🎯 Project Progress

### Active Projects (X total)
#### High Momentum
- [[Projects/Project Name]] - X% complete
  - ✅ Completed: Achievement
  - 🚧 In Progress: Current focus
  - 🎯 Next: Upcoming milestone

#### Needs Attention
- [[Projects/Project Name]] - Blocked/Stalled
  - ❌ Blocker: Description
  - 💡 Solution: Proposed action

#### Completed This Week
- [[Projects/Project Name]] → Ready to archive

### Project Metrics
- Projects started: X
- Milestones reached: X
- Tasks completed: X
- Completion rate: X%

## 🏛️ Area Health Check

### Flourishing (X areas)
- [[Areas/Area Name]] - Thriving
  - Key win: Description

### Well-Maintained (X areas)
- [[Areas/Area Name]] - Balanced
  - Status: Stable

### Needs Attention (X areas)
- [[Areas/Area Name]] - Requires care
  - Gap: What's missing
  - Action: How to improve

### Area Reviews Due
- [[Areas/Area Name]] - Review scheduled
- [[Areas/Area Name]] - Monthly check-in

## 📝 Daily Notes Analysis

### Unprocessed Items (X total)
- Tasks not assigned: X
- Ideas not captured: X
- Resources not filed: X

### Recurring Themes
- Theme 1: Mentioned X times → Consider project?
- Theme 2: Pattern observed → Area adjustment?

### Orphaned Thoughts
Insights without a home:
- Thought needing categorization
- Observation requiring action

## 📚 Resource Activity

## 👥 Person Rhythms

### Connected With (X people)
- [[Persons/Person]] - Coffee chat about project
- [[Persons/Person]] - Weekly call maintained
- [[Persons/Person]] - Collaborated on X

### Need Connection (X people)
- [[Persons/Person]] - Last talked: 3 weeks ago
- [[Persons/Person]] - Birthday next week

### Person Insights
- Strong connections: X
- Needing attention: X
- New persons: X

## 🗄️ Archive Candidates

### Completed Projects
- [[Projects/Project Name]] - Outcomes achieved
  - Key Learning: Insight
  - Next: Consider follow-up project?

### Inactive Items
- [[Areas/Area Name]] - No activity in 3 months
- [[Persons/Person]] - Lost touch (archive or reconnect?)

## 💡 Insights & Patterns

### Emerging Opportunities
- Pattern: Description → Potential project
- Connection: Link between X and Y

### Efficiency Gains
- Process improvement: Description
- Time saved: Estimate

### Lessons Learned
- What worked: Success pattern
- What didn't: Failure pattern

## 📋 Week Ahead

### Priority Projects
1. [[Projects/Project Name]] - Critical milestone
2. [[Projects/Project Name]] - Deadline approaching
3. [[Projects/Project Name]] - High impact

### Area Focus
- [[Areas/Area Name]] - Scheduled review
- [[Areas/Area Name]] - Maintenance needed

### Time Blocks Suggested
- Monday: Project focus
- Wednesday: Area reviews
- Friday: Resource organization

### Key Tasks
- [ ] Task 1 - Project/Area
- [ ] Task 2 - Project/Area
- [ ] Task 3 - Project/Area

## 🔄 Process Improvements

### Life Balance Check
- Projects (Creating): X active
- Areas (Maintaining): X healthy / X total
- Persons (Connecting): X nurtured this week
- Daily Notes (Capturing): X days / 7

### Suggested Adjustments
- System improvement: Description
- New workflow: Proposal

## 📊 Summary Metrics

### This Week
- Projects active: X
- Areas maintained: X
- Resources added: X
- Tasks completed: X
- Ideas captured: X

### Trends (vs last week)
- Productivity: ↑↓→
- Organization: ↑↓→
- Progress: ↑↓→

### Next Week Goals
- Complete X project milestones
- Maintain X area standards
- Process X% of daily notes
```

## Examples:

```
/weekly-review
```
Review current week with standard analysis.

```
/weekly-review --week "2025-03"
```
Review a specific week.

```
/weekly-review --include-archives --generate-tasks
```
Include archived items and auto-generate task list.

## Implementation Notes:

- Scan Projects, Areas, Persons folders
- Look for recent updates in READMEs
- Count interactions from daily note links
- Identify patterns in daily notes
- Keep output focused and actionable
- Celebrate wins, don't just find problems
- Create review in Daily folder or Reviews/
- Keep the human element central
- Make it feel like reflection, not reporting