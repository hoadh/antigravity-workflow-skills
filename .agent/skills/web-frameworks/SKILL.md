---
name: web-frameworks
description: Build modern full-stack web applications with Next.js (App Router, Server Components, SSR, SSG), Turborepo (monorepo management, task pipelines, remote caching), and RemixIcon (3100+ SVG icons). Use when creating React apps, implementing SSR, setting up monorepos, optimizing builds, or adding icon libraries.
---

# Web Frameworks

Next.js + Turborepo + RemixIcon for modern full-stack web development.

## When to Use

- **Single app**: Next.js + RemixIcon
- **Monorepo**: Next.js + Turborepo + RemixIcon

## Quick Start

```bash
# Single app
npx create-next-app@latest my-app && cd my-app && npm install remixicon

# Monorepo
npx create-turbo@latest my-monorepo
```

## References

### Next.js
- `references/nextjs-app-router.md` - Routing, layouts, pages
- `references/nextjs-server-components.md` - RSC patterns, streaming
- `references/nextjs-data-fetching.md` - fetch, caching, revalidation
- `references/nextjs-optimization.md` - Images, fonts, bundles

### Turborepo
- `references/turborepo-setup.md` - Installation, workspace config
- `references/turborepo-pipelines.md` - Dependencies, parallel execution
- `references/turborepo-caching.md` - Local/remote cache

### RemixIcon
- `references/remix-icon-integration.md` - Installation, usage, a11y
