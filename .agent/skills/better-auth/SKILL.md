---
name: better-auth
description: Implement authentication and authorization with Better Auth - a framework-agnostic TypeScript authentication framework. Features include email/password with verification, OAuth providers, two-factor authentication, passkeys/WebAuthn, session management, RBAC, rate limiting, and database adapters. Use when adding authentication, implementing OAuth flows, setting up 2FA, managing sessions, or building secure auth systems.
---

# Better Auth

Comprehensive, framework-agnostic authentication/authorization framework for TypeScript.

## When to Use

- Implementing auth in TypeScript/JavaScript applications
- Adding email/password or social OAuth authentication
- Setting up 2FA, passkeys, magic links
- Building multi-tenant apps with organization support
- Working with any framework (Next.js, Nuxt, SvelteKit, Remix, Astro, Hono, Express)

## Quick Start

```bash
npm install better-auth
```

```env
BETTER_AUTH_SECRET=<generated-secret-32-chars-min>
BETTER_AUTH_URL=http://localhost:3000
```

```ts
import { betterAuth } from "better-auth";
export const auth = betterAuth({
  database: { /* config */ },
  emailAndPassword: { enabled: true, autoSignIn: true },
  socialProviders: { github: { clientId: "...", clientSecret: "..." } }
});
```

## References

- `references/email-password-auth.md` - Email/password, verification, reset
- `references/oauth-providers.md` - Social login setup
- `references/database-integration.md` - Database adapters, schema, migrations
- `references/advanced-features.md` - 2FA, passkeys, magic links, organizations

## Resources

- Docs: https://www.better-auth.com/docs
- GitHub: https://github.com/better-auth/better-auth
