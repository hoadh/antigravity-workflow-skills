---
description: Create a design based on screenshot
---

Replicate or draw inspiration from a provided screenshot.

## Workflow

1. **Analyze** screenshot using `ai-multimodal` skill
2. **Extract** design guidelines using `frontend-design` skill:
   - Colors (hex codes), typography, spacing, layout patterns
3. **Implement** code following extracted guidelines exactly
4. **Verify** implementation matches original screenshot
5. **Deliver** working code

## Notes
- Extract design guidelines BEFORE implementing
- Match exact colors, fonts, spacing from screenshot
- Use `ai-multimodal` skill for visual analysis
