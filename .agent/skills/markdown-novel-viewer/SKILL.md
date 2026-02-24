---
name: markdown-novel-viewer
description: Background HTTP server rendering markdown files with calm, book-like reading experience. Universal viewer for markdown files and directory browsing with novel theme, dark mode, and plan navigation.
---

# Markdown Novel Viewer

Universal viewer — pass ANY path and view it with a book-like reading experience.

## Quick Start

```bash
# View markdown file
node .agent/skills/markdown-novel-viewer/scripts/server.cjs --file ./README.md --open

# Browse directory
node .agent/skills/markdown-novel-viewer/scripts/server.cjs --dir ./plans --open

# Stop server
node .agent/skills/markdown-novel-viewer/scripts/server.cjs --stop
```

## Features

- Warm cream/dark theme with serif headings
- Directory browser with emoji icons
- Plan navigation with phase sidebar
- Keyboard shortcuts: T (theme), S (sidebar), Left/Right (navigate)

## CLI Options

| Option | Description | Default |
|--------|-------------|---------|
| `--file` | Markdown file to view | - |
| `--dir` | Directory to browse | - |
| `--port` | Server port | 3456 |
| `--host` | Host to bind | localhost |
| `--open` | Auto-open browser | false |
| `--stop` | Stop all servers | - |
