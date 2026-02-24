---
name: payment-integration
description: Implement payment integrations with SePay (Vietnamese payment gateway, VietQR, bank transfers) and Polar (global SaaS monetization, subscriptions, usage-based billing, automated benefits). Use when integrating payment processing, checkout flows, subscriptions, webhooks, or billing systems.
---

# Payment Integration

Payment processing with SePay (Vietnamese) and Polar (global SaaS).

## Platform Selection

**SePay** — Vietnamese market, bank transfer automation, VietQR, local payment methods
**Polar** — Global SaaS, subscriptions, usage-based billing, Merchant of Record

## References

### SePay
- `references/sepay/overview.md` - Auth, supported banks
- `references/sepay/api.md` - Endpoints, transactions
- `references/sepay/webhooks.md` - Setup, verification
- `references/sepay/qr-codes.md` - VietQR generation

### Polar
- `references/polar/overview.md` - Auth, MoR concept
- `references/polar/products.md` - Products, pricing
- `references/polar/checkouts.md` - Checkout flows
- `references/polar/webhooks.md` - Events, verification
- `references/polar/benefits.md` - Automated delivery
