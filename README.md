# Para-Claude 🧠✨

An intentional life operating system that transforms your Obsidian vault into a thinking partner. Combines the PARA method with Claude Code's intelligence to create a second brain that asks questions, discovers connections, and grows with you.

## What is Para-Claude?

Para-Claude reimagines personal knowledge management as a conversation. Based on the proven PARA method, you have:

- **Projects** - Active work with clear outcomes and deadlines
- **Areas** - Ongoing responsibilities you maintain
- **Resources** - Reference materials and tools for your work
- **Archives** - Inactive items preserved for reference
- **People** - Relationships as core infrastructure, not afterthoughts

Every interaction is designed to understand your intent, not just organize your information.

## ✨ Key Features

### 🎯 Conversational Commands
```
You: /new-project "Write Novel"

Claude: I'd love to help you set up this project thoughtfully.
        What draws you to writing a novel?
        
        1. Creative expression - stories demanding to be told
        2. Professional goal - establish author career  
        3. Personal challenge - prove I can do it
        4. Legacy - share wisdom/experience
        5. Other: ___
```

### 🔄 Intelligent Daily Processing
```
You: /process-daily

Claude: I found several interesting patterns in today's note:

        🎯 Potential new project:
        "Thinking about starting a podcast" (mentioned 3x this month)
        → Would you like to create [[Projects/Podcast Launch]]?

        💫 New connection:
        "Coffee with Amy - great energy about design"
        → Create [[People/Amy Chen]]?
```

### 👥 People Intelligence
```
You: /people-check

Claude: 💛 Sarah - Strong connection, regular coffee chats
        ⚠️ Mom - Haven't talked in 2 weeks (usually weekly)
        🎂 John - Birthday next Tuesday!
        
        Would you like suggestions for reconnecting?
```

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/yourusername/para-claude.git

# Install in your Obsidian vault
cd para-claude
./install.sh /path/to/your/obsidian/vault

# Start creating
/new-project "Your first meaningful project"
```

## 📋 Requirements

- **Obsidian** - Your thinking environment
- **Claude Code** - Your AI partner (formerly Cursor)
- **Open Mind** - Ready to think differently about PKM

## 🎯 Philosophy

Traditional PKM focuses on capture and retrieval. Para-Claude focuses on growth and connection.

We believe:
- **Questions > Categories** - Understanding intent matters more than filing
- **People > Productivity** - Relationships are infrastructure
- **Growth > Management** - Your system should evolve with you
- **Meaning > Efficiency** - Choose projects that matter

## 📦 What's Included

```
├── system/
│   ├── commands/          # Intelligent slash commands
│   ├── claude-context/    # AI guidance files
│   └── templates/         # Starting structures
├── docs/                  # Complete documentation
├── examples/              # See it in action
└── install.sh            # One-command setup
```

## 🛠 Installation

### Default Installation
```bash
./install.sh ~/Documents/Obsidian/MyVault
```

### Minimal Installation
```bash
./install.sh --minimal ~/Documents/Obsidian/MyVault
```

### Update Existing
```bash
./install.sh --update ~/Documents/Obsidian/MyVault
```

## 📚 Documentation

- [Getting Started](docs/GETTING_STARTED.md) - First steps with Para-Claude
- [Philosophy](docs/PHILOSOPHY.md) - Why we built this differently
- [Command Reference](docs/COMMAND_REFERENCE.md) - All commands explained
- [Customization](docs/CUSTOMIZATION.md) - Make it yours

## 🤝 Contributing

Para-Claude is open to thoughtful contributions:
- **Commands** - New ways to interact
- **Templates** - Different starting points
- **Documentation** - Help others understand
- **Philosophy** - Deeper thinking always welcome

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## 🗺 Roadmap

### Now (v0.1)
- ✅ Core command system
- ✅ Basic intelligence
- ✅ Easy installation

### Current (v0.2)
- ✅ Standard PARA implementation
- ✅ Resources functionality
- ✅ Enhanced people tracking
- ✅ Improved command structure

### Future
- 💭 Visual relationship maps
- 💭 Voice interactions
- 💭 Multi-vault sync
- 💭 Community templates

## 💬 Community

- **Issues** - Bug reports and feature requests
- **Discussions** - Philosophy and practice
- **Discord** - Coming soon

## 📄 License

MIT - Use freely, modify thoughtfully, share openly.

---

*Built with love for thinkers who want their tools to understand them.*