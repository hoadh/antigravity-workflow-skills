---
name: ai-artist
description: Write and optimize prompts for AI-generated outcomes across text and image models. Use when crafting prompts for LLMs, image generators (Midjourney, DALL-E, Stable Diffusion, Imagen, Flux), or video generators (Veo, Runway). Covers prompt structure, style keywords, negative prompts, chain-of-thought, few-shot examples, iterative refinement, and domain-specific patterns.
---

# AI Artist - Prompt Engineering

Craft effective prompts for AI text and image generation models.

## Core Principles

1. **Clarity** - Be specific, avoid ambiguity
2. **Context** - Set scene, role, constraints upfront
3. **Structure** - Use consistent formatting (markdown, XML tags, delimiters)
4. **Iteration** - Refine based on outputs, A/B test variations

## Quick Patterns

### LLM Prompts

```
[Role] You are a {expert type} specializing in {domain}.
[Context] {Background information and constraints}
[Task] {Specific action to perform}
[Format] {Output structure - JSON, markdown, list, etc.}
[Examples] {1-3 few-shot examples if needed}
```

### Image Generation

```
[Subject] {main subject with details}
[Style] {artistic style, medium, artist reference}
[Composition] {framing, angle, lighting}
[Quality] {resolution modifiers, rendering quality}
[Negative] {what to avoid - only if supported}
```

## References

| Topic | File |
|-------|------|
| LLM | `references/llm-prompting.md` |
| Image | `references/image-prompting.md` |
| Advanced | `references/advanced-techniques.md` |
| Domain Index | `references/domain-patterns.md` |

## Anti-Patterns

- Vague instructions ("make it better")
- Conflicting constraints
- Missing context for domain tasks
- Over-prompting with redundant details
- Ignoring model-specific strengths/limits
