# /new-resource - Add a reference material or tool

Interactively create a new resource for materials you want to reference, tools you use, or templates you reuse.

## Usage
```
/new-resource "Resource Name"
```

## Philosophy
- **Reference, not action** - Resources are for future reference
- **Organized by use** - How you'll use it matters more than topic
- **Living collection** - Regularly review and prune
- **Supports PARA** - Resources serve Projects and Areas

## Interactive Process:

1. **Understands the resource type** through questions
2. **Identifies what it supports** (projects/areas)
3. **Captures key metadata** for findability
4. **Creates appropriate structure** based on type
5. **Links to related entities** naturally

## Questions Asked:

### Resource Type
- What kind of resource is this?
- How will you use it?
- Is it current or timeless?

### Connections
- Which projects might use this?
- Which areas does it support?
- Who shared or recommended it?

### Organization
- Any specific tags?
- Related resources?
- Update frequency?

## Resource Types:

### Reference Materials
- Articles, guides, documentation
- Research papers, studies
- Best practices, standards
- How-to guides, tutorials

### Tools & Services
- Software and applications
- Online services and platforms
- Physical tools and equipment
- Workflows and processes

### Templates & Frameworks
- Reusable document templates
- Project structures
- Checklists and procedures
- Decision frameworks

### Collections
- Curated link lists
- Resource directories
- Tool comparisons
- Learning paths

### Learning Materials
- Courses and curricula
- Books and reading lists
- Video tutorials
- Practice exercises

## Dynamic README Template:

```markdown
---
type: resource
resource-type: reference|tool|template|collection|learning
status: current|outdated|archived
created: {{date}}
source: {{url or origin}}
tags:
  - resource/{{type}}
  - topic/{{subject}}
related-to:
  - [[Projects/{{Using Project}}]]
  - [[Areas/{{Relevant Area}}]]
shared-by: [[People/{{Person Name}}]]
---

# {{title}}

## What This Is
{{Brief description of the resource}}

## Why It's Valuable
{{How this helps you}}

## How to Use
{{Quick reference for using this resource}}

## Key Insights
{{Main takeaways or important points}}

## Related Resources
- [[Resources/{{Similar}}]]
- {{External links}}

## Update History
- {{date}} - Initial capture: {{context}}
```

## Interactive Example:

```
You: /new-resource "Zettelkasten Method Guide"

Claude: I'll help you capture this resource thoughtfully.

What type of resource is this?
1. 📖 Reference material - Information to consult
2. 🛠️ Tool or service - Something you use
3. 📋 Template - Reusable structure
4. 📚 Collection - Curated set of resources
5. 🎓 Learning material - For skill development

You: 1

Claude: Great! A reference guide.

What makes this Zettelkasten guide valuable to you?
- Implementing a note-taking system
- Research for a project
- General knowledge management
- Teaching others
- Other?

You: Implementing a note-taking system

Claude: Perfect! That's very practical.

Does this relate to any current projects or areas?
(Type names or 'none' or 'not sure')

You: My "PKM System Setup" project and "Learning" area

Claude: Excellent connections!

Where did you find this resource?
- Someone recommended it
- Found during research  
- Course material
- Other?

You: Sarah Chen recommended it during our coffee chat

Claude: Creating your Zettelkasten resource...

I've captured this with:
- Type: Reference material for implementation
- Connected to [[Projects/PKM System Setup]]
- Linked to [[Areas/Learning]]
- Noted [[People/Sarah Chen]] as source
- Ready for your notes and insights

Would you like to add any key takeaways now?
```

## Organization Patterns:

### By Resource Type
```
Resources/
├── References/
│   ├── Articles/
│   ├── Guides/
│   └── Research/
├── Tools/
│   ├── Software/
│   ├── Services/
│   └── Workflows/
├── Templates/
│   ├── Project Templates/
│   ├── Document Templates/
│   └── Checklists/
└── Learning/
    ├── Courses/
    ├── Books/
    └── Tutorials/
```

### By Area/Domain
```
Resources/
├── Health & Fitness/
├── Technology/
├── Business/
├── Creative/
└── Personal Development/
```

### By Status
- `#resource/active` - Currently using
- `#resource/reference` - For occasional lookup
- `#resource/someday` - Might be useful later
- `#resource/outdated` - Superseded but kept

## Maintenance:

Resources need regular review to stay valuable:

### Quarterly Review Questions
- Still relevant to current work?
- Information still current?
- Better resource available?
- Actually being used?

### Archive Triggers
- Outdated information
- No longer relevant to any project/area
- Superseded by better resource
- Haven't accessed in 6+ months

## Integration with Daily Processing:

When `/process-daily` encounters:
- "Found great article about..." → Resource suggestion
- "Useful tool for..." → Resource capture
- "Bookmarked..." → Resource filing
- "X recommended..." → Resource with attribution

## Examples:

```
/new-resource "Getting Things Done"
```
Book as learning resource

```
/new-resource "Notion"
```
Tool/service resource

```
/new-resource "Weekly Review Template"
```
Reusable template resource

```
/new-resource "Best Podcasts for Entrepreneurs"
```
Curated collection resource

## Remember:

Resources are your reference library, not your task list. They support action but aren't actionable themselves. Keep them organized, current, and connected to your active work.