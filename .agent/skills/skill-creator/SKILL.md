---
name: skill-creator
description: Guide for creating effective agent skills, adding skill references, scripts, or optimizing existing skills. Use when creating or updating skills that extend agent capabilities with specialized knowledge, workflows, or tool integrations.
---

# Skill Creator

Guide for creating effective agent skills.

## Skill Anatomy

```
.agent/skills/
└── skill-name/
    ├── SKILL.md (required, <100 lines)
    │   ├── YAML frontmatter (name, description)
    │   └── Markdown instructions
    └── Bundled Resources (optional)
        ├── scripts/      - Executable code
        ├── references/   - Documentation loaded as needed
        └── assets/       - Templates, images, fonts
```

## Key Rules

- `SKILL.md` under 100 lines — use references for details
- Reference files also under 100 lines — split into multiple files
- Descriptions must be specific enough for automatic activation
- Scripts: prefer Node.js or Python over bash
- Progressive disclosure: metadata → SKILL.md → references → scripts

## Creation Process

1. **Understand** — Gather concrete examples of skill usage
2. **Plan** — Identify reusable scripts, references, assets
3. **Initialize** — Create skill directory structure
4. **Edit** — Write SKILL.md and bundled resources
5. **Test** — Verify scripts work, iterate based on usage
