---
name: shopify
description: Build Shopify applications, extensions, and themes using GraphQL/REST APIs, Shopify CLI, Polaris UI, and Liquid templating. Use when building Shopify apps, checkout customizations, admin interfaces, themes, payment processing, or extending Shopify functionality.
---

# Shopify Development

Build on Shopify platform: apps, extensions, themes, and API integrations.

## Quick Start

```bash
npm install -g @shopify/cli@latest
shopify app init          # Create app
shopify app dev           # Start dev server
shopify app deploy        # Deploy
shopify theme init        # Create theme
shopify theme dev         # Theme preview
```

## When to Build What

- **App**: External integrations, multi-store features, complex logic, billing
- **Extension**: Checkout customization, admin UI, POS actions, discount rules
- **Theme**: Custom storefront design, brand-specific layouts

## References

- `references/app-development.md` - OAuth, APIs, webhooks, billing
- `references/extensions.md` - Checkout, Admin, POS, Functions
- `references/themes.md` - Liquid, sections, deployment

## Resources

- Shopify Docs: https://shopify.dev/docs
- GraphQL API: https://shopify.dev/docs/api/admin-graphql
- Polaris: https://polaris.shopify.com
