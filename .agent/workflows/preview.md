---
description: Preview markdown files or browse plan directories
---

## Purpose

Universal viewer for markdown files and directory browsing.

## Usage

- `/preview <file.md>` — View markdown file
- `/preview <directory/>` — Browse directory contents
- `/preview --stop` — Stop running server

## Workflow

1. Determine if path is a file or directory
2. Start the markdown viewer server
3. Report the URL for browser access
4. Server runs in background until stopped

## Notes

- Server auto-detects available port
- Supports both local and network access
- Use `--stop` to terminate the server
