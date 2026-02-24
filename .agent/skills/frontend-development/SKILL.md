---
name: frontend-development
description: Frontend development guidelines for React/TypeScript applications. Modern patterns including Suspense, lazy loading, useSuspenseQuery, MUI v7 styling, TanStack Router, performance optimization, and TypeScript best practices. Use when creating components, pages, features, fetching data, styling, routing, or working with frontend code.
---

# Frontend Development Guidelines

Modern React development with Suspense-based data fetching, lazy loading, and performance optimization.

## Core Principles

1. **Lazy Load Everything Heavy**: Routes, DataGrid, charts, editors
2. **Suspense for Loading**: Use SuspenseLoader, not early returns
3. **useSuspenseQuery**: Primary data fetching pattern
4. **Features are Organized**: api/, components/, hooks/, helpers/ subdirs
5. **Styles Based on Size**: <100 lines inline, >100 separate file
6. **No Early Returns**: Prevents layout shift

## Topic Guides

| Need | Reference |
|------|-----------|
| Create a component | `resources/component-patterns.md` |
| Fetch data | `resources/data-fetching.md` |
| Organize files | `resources/file-organization.md` |
| Style components | `resources/styling-guide.md` |
| Set up routing | `resources/routing-guide.md` |
| Handle loading/errors | `resources/loading-and-error-states.md` |
| Optimize performance | `resources/performance.md` |
| TypeScript types | `resources/typescript-standards.md` |
| Forms/Auth/DataGrid | `resources/common-patterns.md` |
| Full examples | `resources/complete-examples.md` |
