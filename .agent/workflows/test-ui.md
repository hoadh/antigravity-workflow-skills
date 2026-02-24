---
description: Run UI tests on a website and generate a detailed report
---

Comprehensive UI testing with visual verification.

## Workflow

1. **Analyze** the target URL and test scope
2. **Handle authentication** if needed:
   - Ask user to log in manually and provide cookies/tokens
   - Inject auth credentials using `chrome-devtools` skill
3. **Browse** the site, discover all pages and components
4. **Create** test plan based on discovered structure
5. **Test** in parallel: pages, forms, navigation, accessibility, responsive, performance
6. **Screenshot** all tested pages using `chrome-devtools` skill
7. **Analyze** screenshots using `ai-multimodal` skill
8. **Generate** comprehensive Markdown report with embedded screenshots
9. **Report** summary of findings and recommendations

## Notes
- Use `chrome-devtools` skill for browser automation
- Use `ai-multimodal` skill for visual analysis
- **Do not** implement fixes — only test and report
- Sacrifice grammar for concision in reports
