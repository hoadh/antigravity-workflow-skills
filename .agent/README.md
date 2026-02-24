# Antigravity `.agent/` Configuration

This directory contains the [Google Antigravity IDE](https://idx.google.com/) agent configuration, converted from the Claude Code `.claude/` directory.

## Directory Structure

```
.agent/
├── rules/                          # Always-on persistent rules (4)
│   ├── project-instructions.md     # From CLAUDE.md
│   ├── development-rules.md        # From .claude/workflows/development-rules.md
│   ├── orchestration-protocol.md   # From .claude/workflows/orchestration-protocol.md
│   └── documentation-management.md # From .claude/workflows/documentation-management.md
├── workflows/                      # User-triggered via /command (17)
│   ├── plan.md                     # Create implementation plans
│   ├── cook.md                     # Implement features step by step
│   ├── code.md                     # Code an existing plan
│   ├── fix.md                      # Analyze and fix issues
│   ├── test.md                     # Run tests and analyze
│   ├── debug.md                    # Debug technical issues
│   ├── scout.md                    # Search codebase
│   ├── watzup.md                   # Review recent changes
│   ├── ask.md                      # Answer technical questions
│   ├── brainstorm.md               # Brainstorm solutions
│   ├── bootstrap.md                # Bootstrap new projects
│   ├── coding-level.md             # Set experience level
│   ├── journal.md                  # Write journal entries
│   ├── use-mcp.md                  # Use MCP server tools
│   ├── worktree.md                 # Git worktree management
│   ├── preview.md                  # Preview markdown files
│   └── kanban.md                   # Plans dashboard
└── skills/                         # On-demand semantic matching (31)
    ├── planning/                   # Technical planning
    ├── code-review/                # Code review practices
    ├── research/                   # Research methodology
    ├── debugging/                  # Systematic debugging
    ├── ai-artist/                  # AI prompt engineering
    ├── ai-multimodal/              # Gemini multimodal processing
    ├── backend-development/        # Backend systems
    ├── better-auth/                # Better Auth framework
    ├── chrome-devtools/            # Browser automation
    ├── databases/                  # MongoDB & PostgreSQL
    ├── devops/                     # Cloud infrastructure
    ├── docs-seeker/                # Documentation discovery
    ├── frontend-design/            # Creative frontend design
    ├── frontend-development/       # React/TypeScript guidelines
    ├── google-adk-python/          # Google ADK for AI agents
    ├── mcp-builder/                # Build MCP servers
    ├── mcp-management/             # Manage MCP servers
    ├── media-processing/           # FFmpeg/ImageMagick/RMBG
    ├── mobile-development/         # React Native/Flutter/Swift/Kotlin
    ├── payment-integration/        # SePay & Polar payments
    ├── problem-solving/            # Systematic problem-solving
    ├── repomix/                    # Repository packaging
    ├── sequential-thinking/        # Structured reasoning
    ├── shopify/                    # Shopify development
    ├── skill-creator/              # Create new skills
    ├── threejs/                    # 3D web experiences
    ├── ui-styling/                 # shadcn/ui + Tailwind CSS
    ├── ui-ux-pro-max/              # UI/UX design intelligence
    ├── web-frameworks/             # Next.js + Turborepo
    ├── plans-kanban/               # Plans dashboard server
    └── markdown-novel-viewer/      # Markdown reader server
```

## Concept Mapping

| Claude Code | Antigravity | Notes |
|---|---|---|
| `CLAUDE.md` | `.agent/rules/project-instructions.md` | Always-on rules |
| `.claude/workflows/*.md` | `.agent/rules/*.md` | Persistent guidelines |
| `.claude/commands/*.md` | `.agent/workflows/*.md` | User-triggered via `/command` |
| `.claude/skills/*/SKILL.md` | `.agent/skills/*/SKILL.md` | On-demand skills |

## How It Works

### Rules (`rules/`)
Always-on persistent instructions loaded automatically. Define coding standards, orchestration patterns, and documentation practices.

### Workflows (`workflows/`)
User-triggered via `/command` in the IDE. Step-by-step recipes for planning, implementing, fixing, testing, etc.

### Skills (`skills/`)
Activated on-demand via semantic matching. Each skill has `SKILL.md` with YAML frontmatter and optional `references/` for detailed protocols.

## Unmapped Concepts

| Claude Code Concept | Why No Equivalent |
|---|---|
| **Agents** (`.claude/agents/`) | Antigravity manages agents internally; behaviors folded into skills/workflows |
| **Hooks** (`.claude/hooks/`) | No programmable hooks; security via IDE policies; rules are always-on |
| **Settings** (`.claude/settings.json`) | Managed via IDE UI |
| **Statusline** (`.claude/statusline.*`) | IDE has own status display |
| **MCP** (`.claude/.mcp.json`) | Built-in MCP support via IDE settings |

## Key Conversion Decisions

1. **`primary-workflow.md`** → Split between `rules/project-instructions.md` (always-on) and `workflows/` (triggered)
2. **Agent definitions** → Merged into skill descriptions and workflow steps
3. **Hook behaviors** → Replaced by always-on rules
4. **Claude-specific references** → Removed: `Task` tool, subagent spawning, `Skill` tool calls, `$ARGUMENTS`
5. **Subagent delegation** → Replaced with direct step-by-step instructions or skill references
6. **`ck-help.md`** → Skipped (ClaudeKit-specific, not applicable)
7. **`template-skill/`** → Skipped (template only, not a real skill)

## Conversion Stats

| Category | Count |
|---|---|
| Rules | 4 |
| Workflows | 17 |
| Skills | 31 |
| Reference files | 12 |
| **Total files** | **65** |

## Usage

1. Open the project in Google Antigravity IDE
2. Rules are loaded automatically
3. Use `/plan`, `/cook`, `/code`, `/fix`, `/test`, `/debug`, `/scout`, `/watzup`, `/ask`, `/brainstorm`, `/bootstrap`, `/journal`, `/preview`, `/kanban` workflows
4. Skills activate automatically when relevant tasks are detected
