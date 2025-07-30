# /relationship-check - Review relationship health

Analyze your relationships to identify who might need attention, celebrating strong connections and flagging those that may be drifting.

## Usage
```
/relationship-check [--days 30] [--tag "tag-name"] [--context "context-name"]
```

## What this command does:

1. **Scans all relationships** for interaction patterns
2. **Identifies relationships needing attention** based on usual patterns
3. **Highlights important dates** coming up
4. **Suggests reconnection actions**
5. **Celebrates healthy relationships**

## Philosophy
- **Intentional connection** - Use data to be a better friend
- **Pattern awareness** - Notice changes in interaction frequency
- **Gentle nudges** - Suggest, don't demand
- **Quality over quantity** - Depth matters more than frequency

## Output Example:

```markdown
# Relationship Check - 2025-01-28

## 🚨 Need Attention (>30 days)
- [[Relationships/College Roommate]] - Last interaction: 45 days ago
  - Usually monthly catch-ups
  - Suggestion: "Text about upcoming reunion?"
  
- [[Relationships/Mentor]] - Last interaction: 62 days ago  
  - Quarterly coffee tradition at risk
  - Suggestion: "Schedule Q1 coffee?"

## 📅 Upcoming Dates
- [[Relationships/Mom]] - Birthday in 5 days (Feb 2)
- [[Relationships/Sarah Chen]] - Work anniversary next week
- [[Relationships/John Smith]] - Baby due this month

## 💛 Relationships Thriving
- [[Relationships/Partner]] - Daily interactions, very connected
- [[Relationships/Best Friend]] - Weekly calls maintained
- [[Relationships/Team Lead]] - Regular 1:1s, good communication

## 📊 Summary Stats
- Total relationships tracked: 47
- Needing attention: 8 (17%)
- Interacted this week: 23 (49%)
- Interacted this month: 35 (74%)

## 🎯 Suggested Actions
1. Quick text to [[Relationships/College Roommate]]
2. Birthday planning for [[Relationships/Mom]]
3. Coffee invite to [[Relationships/Mentor]]
4. Check in with [[Relationships/John Smith]] about baby
```

## Check Types:

### Default Check
Looks at all relationships, flags those without interaction in 30+ days

### Maintenance Check
```
/relationship-check --days 14
```
More frequent check for closer relationships

### Tag-Specific
```
/relationship-check --tag "relationship/mentor"
```
Check only mentor relationships

### Context-Specific
```
/relationship-check --context "work"
```
Focus on work-related connections

### Deep Check
```
/relationship-check --deep
```
Analyzes pattern changes, not just time gaps

## Pattern Recognition:

The command learns your patterns:
- Weekly coffee with mentor → Flag if 2 weeks pass
- Monthly family calls → Flag if 6 weeks pass  
- Daily partner interaction → Different expectations
- Seasonal friends → Understands natural rhythms

## Relationship Patterns by Context:

The command recognizes patterns based on tags and metadata:

### By Connection Strength (from frontmatter)
- **Strong**: Regular interaction expected
- **Growing**: Building the relationship
- **Maintained**: Steady state connection
- **Dormant**: Natural pause (seasonal friends)

### By Interaction Rhythm (learned)
- **Daily**: Partners, close family, team
- **Weekly**: Close friends, active collaborators  
- **Monthly**: Friends, mentors, extended family
- **Quarterly**: Professional network, distant friends
- **Occasional**: Context-specific (conference friends)

### Common Tag Patterns
Your actual tags emerge from use, but might include:
- `#relationship/collaborator` - Active project partners
- `#relationship/mentor` - Growth relationships
- `#relationship/friend` + `#context/hobby` - Activity friends
- `#relationship/neighbor` - Community connections
- `#context/parenting` - Parent friends
- `#growth/accountability` - Growth partners

## Smart Suggestions:

Based on relationship type and history:
- "Text about [recent life event]"
- "Coffee catch-up overdue"
- "Birthday coming up - plan something?"
- "They mentioned [concern] - check in?"
- "Quarterly tradition time"

## Privacy & Ethics:

✅ DO:
- Track your own efforts to connect
- Note important dates they've shared
- Remember what matters to them
- Use data to be more thoughtful

❌ DON'T:
- Track without intention to connect
- Share relationship data
- Make it transactional
- Replace genuine care with metrics

## Implementation Notes:

- Parse all relationship READMEs for last interaction
- Calculate days since last contact
- Learn individual relationship patterns
- Check for upcoming dates in "Important to Remember"
- Generate actionable suggestions
- Sort by priority (longest gaps + closest relationships)
- Create gentle language avoiding guilt
- Maybe integrate with calendar for reminders
- Consider relationship "health score" based on pattern consistency