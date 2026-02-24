---
name: chrome-devtools
description: Browser automation, debugging, and performance analysis using Puppeteer CLI scripts. Use for automating browsers, taking screenshots, analyzing performance, monitoring network traffic, web scraping, form automation, and JavaScript debugging.
---

# Chrome DevTools

Browser automation via Puppeteer scripts with persistent sessions. All scripts output JSON.

## Quick Start

```bash
cd .agent/skills/chrome-devtools/scripts && npm install
node navigate.js --url https://example.com
```

## Available Scripts

| Script | Purpose |
|--------|---------|
| `navigate.js` | Navigate to URLs |
| `screenshot.js` | Capture screenshots |
| `click.js` | Click elements |
| `fill.js` | Fill form fields |
| `evaluate.js` | Execute JS in page |
| `aria-snapshot.js` | Get ARIA accessibility tree |
| `select-ref.js` | Interact by ARIA ref |
| `console.js` | Monitor console messages |
| `network.js` | Track HTTP requests |
| `performance.js` | Measure Core Web Vitals |

## Session Persistence

Browser stays running between script executions. Use `--close true` to end session.

## References

- `references/cdp-domains.md` - Chrome DevTools Protocol
- `references/puppeteer-reference.md` - Puppeteer API
- `references/performance-guide.md` - Core Web Vitals
