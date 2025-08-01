# /person-check - Review person health

Analyze your persons to identify who might need attention, celebrating strong connections and flagging those that may be drifting.

## Usage
```
/person-check [--days 30] [--tag "tag-name"] [--context "context-name"]
```

## What this command does:

1. **Scans all persons** for interaction patterns
2. **Identifies persons needing attention** based on usual patterns
3. **Highlights important dates** coming up
4. **Suggests reconnection actions**
5. **Celebrates healthy persons**

## Philosophy
- **Intentional connection** - Use data to be a better friend
- **Pattern awareness** - Notice changes in interaction frequency
- **Gentle nudges** - Suggest, don't demand
- **Quality over quantity** - Depth matters more than frequency

## Output Example:

```markdown
# Person Check - 2025-01-28

## 🚨 Need Attention (>30 days)
- [[Persons/College Roommate]] - Last interaction: 45 days ago
  - Usually monthly catch-ups
  - Suggestion: "Text about upcoming reunion?"
  
- [[Persons/Mentor]] - Last interaction: 62 days ago  
  - Quarterly coffee tradition at risk
  - Suggestion: "Schedule Q1 coffee?"

## 📅 Upcoming Dates
- [[Persons/Mom]] - Birthday in 5 days (Feb 2)
- [[Persons/Sarah Chen]] - Work anniversary next week
- [[Persons/John Smith]] - Baby due this month

## 💛 Persons Thriving
- [[Persons/Partner]] - Daily interactions, very connected
- [[Persons/Best Friend]] - Weekly calls maintained
- [[Persons/Team Lead]] - Regular 1:1s, good communication

## 📊 Summary Stats
- Total persons tracked: 47
- Needing attention: 8 (17%)
- Interacted this week: 23 (49%)
- Interacted this month: 35 (74%)

## 🎯 Suggested Actions
1. Quick text to [[Persons/College Roommate]]
2. Birthday planning for [[Persons/Mom]]
3. Coffee invite to [[Persons/Mentor]]
4. Check in with [[Persons/John Smith]] about baby
```

## Check Types:

### Default Check
Looks at all persons, flags those without interaction in 30+ days

### Maintenance Check
```
/person-check --days 14
```
More frequent check for closer persons

### Tag-Specific
```
/person-check --tag "person/mentor"
```
Check only mentor persons

### Context-Specific
```
/person-check --context "work"
```
Focus on work-related connections

### Deep Check
```
/person-check --deep
```
Analyzes pattern changes, not just time gaps

## Pattern Recognition:

The command learns your patterns:
- Weekly coffee with mentor → Flag if 2 weeks pass
- Monthly family calls → Flag if 6 weeks pass  
- Daily partner interaction → Different expectations
- Seasonal friends → Understands natural rhythms

## Person Patterns by Context:

The command recognizes patterns based on tags and metadata:

### By Connection Strength (from frontmatter)
- **Strong**: Regular interaction expected
- **Growing**: Building the person
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
- `#person/collaborator` - Active project partners
- `#person/mentor` - Growth persons
- `#person/friend` + `#context/hobby` - Activity friends
- `#person/neighbor` - Community connections
- `#context/parenting` - Parent friends
- `#growth/accountability` - Growth partners

## Smart Suggestions:

Based on person type and history:
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
- Share person data
- Make it transactional
- Replace genuine care with metrics

## Implementation Notes:

- Parse all person READMEs for last interaction
- Calculate days since last contact
- Learn individual person patterns
- Check for upcoming dates in "Important to Remember"
- Generate actionable suggestions
- Sort by priority (longest gaps + closest persons)
- Create gentle language avoiding guilt
- Maybe integrate with calendar for reminders
- Consider person "health score" based on pattern consistency