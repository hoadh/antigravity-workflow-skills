---
description: Plans dashboard with progress tracking and timeline visualization
---

## Purpose

Visual dashboard for viewing and tracking implementation plans.

## Usage

- `/kanban` — View dashboard for `./plans` directory
- `/kanban plans/` — View dashboard for specific directory
- `/kanban --stop` — Stop running server

## Features

- Plan cards with progress bars
- Phase status breakdown (completed, in-progress, pending)
- Timeline/Gantt visualization
- Activity heatmap
- Issue and branch links

## Workflow

1. Start the kanban dashboard server pointing to plans directory
2. Report the URL for browser access
3. Server runs in background until stopped

## Notes

- Server auto-detects available port (3500-3550)
- Supports both local and network access
- Use `--stop` to terminate the server
