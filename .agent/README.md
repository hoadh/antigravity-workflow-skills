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

## Important: Naming Conventions

> **CRITICAL for future contributors and updates — read this before adding or modifying files.**

### Workflow Naming: Flat + Hyphen-Separated

Antigravity only supports **flat files** in `.agent/workflows/` — no subdirectory routing. All workflows must be flat `.md` files with **hyphen-separated names**.

**Mapping from Claude Code colon syntax:**

| Claude Code (colon) | Antigravity (hyphen) | File |
|---|---|---|
| `/docs:init` | `/docs-init` | `docs-init.md` |
| `/fix:ci` | `/fix-ci` | `fix-ci.md` |
| `/plan:fast` | `/plan-fast` | `plan-fast.md` |
| `/cook:auto:parallel` | `/cook-auto-parallel` | `cook-auto-parallel.md` |
| `/skill:optimize:auto` | `/skill-optimize-auto` | `skill-optimize-auto.md` |

**Rule:** Replace every `:` and `/` separator with `-` when creating workflow files.

### Cross-References Between Workflows

When one workflow references another, use the **hyphen naming** format:

```markdown
# CORRECT
Same as `/skill-optimize` but skips user approval step.
Faster but less thorough than `/plan-hard`.

# WRONG — will not resolve in Antigravity
Same as `/skill:optimize` but skips user approval step.
Faster but less thorough than `/plan:hard`.
```

### Path References in Scripts

All scripts must reference `.agent/` paths, never `.claude/`:

```python
# CORRECT
sys.path.insert(0, str(Path.home() / '.agent' / 'scripts'))

# WRONG
sys.path.insert(0, str(Path.home() / '.claude' / 'scripts'))
```

### Checklist Before Committing `.agent/` Changes

- [ ] No `.claude/` path references in any file (`grep -r '\.claude' .agent/`)
- [ ] No colon-separated command references (`grep -r '/[a-z]*:[a-z]' .agent/workflows/`)
- [ ] All workflows are flat files in `.agent/workflows/` (no subdirectories)
- [ ] All SKILL.md files have YAML frontmatter with `name` and `description`
- [ ] Workflow files have YAML frontmatter with `description`

## Installation

Install all skill dependencies (Python packages, Node.js modules, system tools):

```bash
bash .agent/skills/install.sh        # Interactive
bash .agent/skills/install.sh -y     # Auto-confirm
bash .agent/skills/install.sh --with-sudo  # Include system packages (Linux)
```

To use the Python virtual environment manually:
```bash
source .agent/skills/.venv/bin/activate
```

## Conversion Stats

| Category | Count |
|---|---|
| Rules | 4 |
| Workflows | 70 (flat files, hyphen-separated names) |
| Skills (SKILL.md) | 31 |
| Skill references/scripts/data/assets | 364 |
| Install script + configs | 3 |
| **Total files** | **472** |

## Usage

### Getting Started

1. Open the project in Google Antigravity IDE
2. Run `bash .agent/skills/install.sh -y` to install dependencies
3. Rules load automatically — the agent follows them at all times
4. Trigger workflows with `/command` in the chat
5. Skills activate automatically when the agent detects a relevant task

### Workflow Commands

Workflows are triggered by typing `/command` in the Antigravity chat. Variants use hyphen naming (e.g., `/plan-fast`).

#### Feature Development

```
# 1. Plan the feature
/plan add user authentication with OAuth2

# 2. Implement the plan
/cook implement the authentication plan

# 3. Run tests
/test

# 4. Review recent changes
/watzup
```

**Variants:**
- `/plan-fast` — Skip research, plan directly from codebase analysis
- `/plan-hard` — Full research + planning (most thorough)
- `/plan-two` — Generate 2 alternative approaches for comparison
- `/plan-parallel` — Plan with parallel-executable phases
- `/cook-auto` — Implement without user confirmation gates
- `/cook-auto-fast` — Scout + plan + implement, no research
- `/cook-auto-parallel` — Parallel phase execution for speed
- `/code` — Execute an existing plan step by step
- `/code-auto` — Execute plan without approval gates
- `/code-parallel` — Run independent phases simultaneously

#### Bug Fixing

```
# Auto-routes to the right fix strategy
/fix the login button returns 403 on click

# Or use specific variants:
/fix-fast small typo in the header component
/fix-hard authentication system fails under load
/fix-ci                     # Fix GitHub Actions failures
/fix-test                   # Run tests and fix failures
/fix-types                  # Fix TypeScript type errors
/fix-ui                     # Fix visual/layout issues
/fix-logs                   # Analyze error logs and fix
/fix-parallel               # Fix multiple independent issues at once
```

#### Debugging

```
/debug the API returns 500 errors intermittently
```

#### Design & UI

```
/design-good build a SaaS landing page        # Research + implement
/design-fast quick prototype of a pricing card # Rapid implementation
/design-screenshot                              # Replicate from screenshot
/design-video                                   # Inspired by video reference
/design-3d                                      # Three.js 3D experience
/design-describe                                # Describe design from image (no code)
```

#### Documentation

```
/docs-init         # Create initial docs from codebase analysis
/docs-update       # Update existing docs to match current code
/docs-summarize    # Quick codebase summary report
```

#### Content & Copy

```
/content-good      # Thorough copy with research and iterations
/content-fast      # Quick single-pass copy
/content-cro       # Conversion rate optimization analysis
/content-enhance   # Improve existing content
```

#### Git Operations

```
/git-cm            # Stage all + commit
/git-cp            # Stage + commit + push
/git-pr            # Create a pull request
/git-merge         # Merge branches
```

#### Project Bootstrap

```
/bootstrap set up a Next.js SaaS with Stripe billing

# Variants:
/bootstrap-auto              # Skip user confirmations
/bootstrap-auto-fast         # No research, sensible defaults
/bootstrap-auto-parallel     # Parallel execution for speed
```

#### Other Workflows

```
/ask what's the best caching strategy for this API?
/brainstorm how to implement real-time notifications
/scout find all authentication-related files
/scout-ext                   # Use external tools for broader search
/test-ui https://myapp.com  # Comprehensive UI test report
/journal                     # Write journal entries from recent work
/kanban                      # Visual plans dashboard
/preview plans/my-plan/plan.md  # Preview markdown in browser
/worktree add payment integration  # Isolated git worktree
/coding-level 3              # Set explanation depth (0-5)
/review-codebase             # Full codebase quality analysis
/plan-validate               # Validate plan with critical questions
/plan-archive                # Archive completed plans
```

#### Skill Management

```
/skill-create build a Stripe integration skill
/skill-plan design a new monitoring skill
/skill-add my-skill new webhook reference
/skill-optimize my-skill
/skill-optimize-auto my-skill   # Auto-optimize without approval
/skill-fix-logs                  # Fix skill from logs.txt errors
```

#### Payment Integration

```
/integrate-polar   # Polar.sh (global SaaS, subscriptions)
/integrate-sepay   # SePay.vn (Vietnamese payments, VietQR)
```

### How Skills Work

Skills activate **automatically** based on what you're doing — no manual trigger needed. The agent reads each skill's `description` field and loads it when relevant.

**Example:** If you ask "build a REST API with JWT authentication", the agent automatically activates:
- `backend-development` — API design patterns, security best practices
- `better-auth` — JWT/OAuth implementation details

**Example:** If you ask "create a beautiful landing page", the agent activates:
- `ui-ux-pro-max` — Style, typography, color palette selection
- `frontend-design` — Creative design implementation
- `ui-styling` — shadcn/ui + Tailwind CSS patterns

**Example:** If you ask "debug why tests are failing", the agent activates:
- `debugging` — Systematic 4-phase debugging framework
- `code-review` — Verification gates before claiming success

### Available Skills (31)

| Skill | What It Does |
|---|---|
| `planning` | Technical implementation planning |
| `research` | Multi-source research methodology |
| `debugging` | Systematic root cause investigation |
| `code-review` | Review protocols + verification gates |
| `backend-development` | Node.js/Python/Go APIs, security, databases |
| `frontend-development` | React/TypeScript, Suspense, MUI patterns |
| `frontend-design` | Creative, distinctive UI implementation |
| `ui-styling` | shadcn/ui + Tailwind CSS components |
| `ui-ux-pro-max` | Design intelligence (50 styles, 21 palettes, 50 font pairings) |
| `databases` | MongoDB + PostgreSQL queries, optimization |
| `better-auth` | TypeScript auth framework (OAuth, 2FA, passkeys) |
| `mobile-development` | React Native, Flutter, Swift, Kotlin |
| `web-frameworks` | Next.js + Turborepo + RemixIcon |
| `devops` | Cloudflare, Docker, Google Cloud |
| `shopify` | Apps, extensions, themes, Liquid |
| `threejs` | 3D web experiences with Three.js |
| `ai-multimodal` | Gemini API (audio, images, video, docs, generation) |
| `ai-artist` | Prompt engineering for text/image/video AI |
| `media-processing` | FFmpeg + ImageMagick + RMBG |
| `payment-integration` | SePay (Vietnam) + Polar (global SaaS) |
| `chrome-devtools` | Browser automation via Puppeteer |
| `docs-seeker` | Documentation discovery via llms.txt |
| `mcp-builder` | Build MCP servers (Python/TypeScript) |
| `mcp-management` | Discover and execute MCP tools |
| `google-adk-python` | Google Agent Development Kit |
| `repomix` | Package repos for AI analysis |
| `sequential-thinking` | Structured multi-step reasoning |
| `problem-solving` | Systematic techniques for stuck-ness |
| `skill-creator` | Create and optimize agent skills |
| `plans-kanban` | Visual plans dashboard server |
| `markdown-novel-viewer` | Markdown reader server |
