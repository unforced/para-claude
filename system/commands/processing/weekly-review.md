# /weekly-review - Weekly life review

Review your pursuits, arenas, and relationships to celebrate progress and plan the week ahead.

## Usage
```
/weekly-review [--week "YYYY-WW"] [--include-archives] [--generate-tasks]
```

## What this command does:

1. **Reviews your life** across:
   - Active pursuits and their progress
   - Arenas and how they're flourishing
   - Relationships and recent connections
   - Daily notes for unprocessed gems

2. **Identifies patterns**:
   - What's moving forward
   - What's stuck
   - Who you've connected with
   - Emerging themes in daily notes

3. **Suggests actions**:
   - Pursuits to focus on
   - Arenas needing attention
   - People to reconnect with
   - Ideas worth exploring

4. **Plans ahead**:
   - This week's priorities
   - Relationships to nurture
   - Arenas to tend
   - Time for what matters

## Weekly Review Template:

```markdown
# Weekly Review - YYYY Week WW

Period: YYYY-MM-DD to YYYY-MM-DD
Previous: [[Reviews/Weekly/YYYY-WW]]
Next: [[Reviews/Weekly/YYYY-WW]]

## 🎯 Pursuit Progress

### Active Pursuits (X total)
#### High Momentum
- [[Pursuits/Pursuit Name]] - X% complete
  - ✅ Completed: Achievement
  - 🚧 In Progress: Current focus
  - 🎯 Next: Upcoming milestone

#### Needs Attention
- [[Pursuits/Pursuit Name]] - Blocked/Stalled
  - ❌ Blocker: Description
  - 💡 Solution: Proposed action

#### Completed This Week
- [[Pursuits/Pursuit Name]] → Ready to archive

### Pursuit Metrics
- Pursuits started: X
- Milestones reached: X
- Tasks completed: X
- Completion rate: X%

## 🏛️ Arena Health Check

### Flourishing (X arenas)
- [[Arenas/Arena Name]] - Thriving
  - Key win: Description

### Well-Maintained (X arenas)
- [[Arenas/Arena Name]] - Balanced
  - Status: Stable

### Needs Attention (X arenas)
- [[Arenas/Arena Name]] - Requires care
  - Gap: What's missing
  - Action: How to improve

### Arena Reviews Due
- [[Arenas/Arena Name]] - Review scheduled
- [[Arenas/Arena Name]] - Monthly check-in

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

## 👥 Relationship Rhythms

### Connected With (X people)
- [[Relationships/Person]] - Coffee chat about project
- [[Relationships/Person]] - Weekly call maintained
- [[Relationships/Person]] - Collaborated on X

### Need Connection (X people)
- [[Relationships/Person]] - Last talked: 3 weeks ago
- [[Relationships/Person]] - Birthday next week

### Relationship Insights
- Strong connections: X
- Needing attention: X
- New relationships: X

## 🗄️ Archive Candidates

### Completed Projects
- [[Projects/Project Name]] - Outcomes achieved
  - Key Learning: Insight
  - Next: Consider follow-up project?

### Inactive Items
- [[Areas/Area Name]] - No activity in 3 months
- [[Relationships/Person]] - Lost touch (archive or reconnect?)

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
- Relationships (Connecting): X nurtured this week
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

- Scan Projects, Areas, Relationships folders
- Look for recent updates in READMEs
- Count interactions from daily note links
- Identify patterns in daily notes
- Keep output focused and actionable
- Celebrate wins, don't just find problems
- Create review in Daily folder or Reviews/
- Keep the human element central
- Make it feel like reflection, not reporting