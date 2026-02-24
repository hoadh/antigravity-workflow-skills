---
name: plans-kanban
description: Plans dashboard server with progress tracking, timeline visualization, phase status indicators, and activity heatmap. Use for viewing and tracking implementation plans visually.
---

# Plans Kanban

Visual dashboard for plan directories with progress tracking.

## Quick Start

```bash
node .agent/skills/plans-kanban/scripts/server.cjs --dir ./plans --open
```

## Features

- Plan cards with progress bars
- Phase status breakdown (completed, in-progress, pending)
- Timeline/Gantt visualization
- Activity heatmap
- Issue and branch links

## CLI Options

| Option | Description | Default |
|--------|-------------|---------|
| `--dir` | Plans directory | - |
| `--port` | Server port | 3500 |
| `--host` | Host to bind | localhost |
| `--open` | Auto-open browser | false |
| `--stop` | Stop all servers | - |
