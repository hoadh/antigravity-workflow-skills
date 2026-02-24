---
name: ui-ux-pro-max
description: "Frontend UI/UX design intelligence - activate FIRST when user requests beautiful, stunning, or aesthetic interfaces. 50 styles, 21 palettes, 50 font pairings, 20 charts, 8 stacks. Use for design decisions before implementation."
---

# UI/UX Pro Max - Design Intelligence

Searchable database of UI styles, color palettes, font pairings, chart types, and stack-specific best practices.

## How to Use

### Step 1: Analyze Requirements
Extract: product type, style keywords, industry, stack

### Step 2: Search Relevant Domains
```bash
python3 .agent/skills/ui-ux-pro-max/scripts/search.py "<keyword>" --domain <domain>
```

**Domains**: product, style, typography, color, landing, chart, ux, prompt
**Stacks**: html-tailwind (default), react, nextjs, vue, svelte, swiftui, react-native, flutter

### Step 3: Implement
Synthesize search results and build the design.

## Common Rules

- No emoji icons — use SVG (Heroicons, Lucide)
- `cursor-pointer` on all clickable elements
- Smooth transitions (150-300ms)
- Sufficient contrast in light/dark modes
- Floating navbar with proper spacing
