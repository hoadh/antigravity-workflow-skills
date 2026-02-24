---
description: Implement payment integration with Polar.sh
---

Implement Polar payment integration for SaaS monetization.

## Workflow

1. **Activate** `payment-integration` skill
2. **Load** Polar-specific references from skill
3. **Analyze** project requirements (products, pricing, benefits)
4. **Implement** following the Polar integration workflow:
   - Auth setup → Products → Checkouts → Webhooks → Benefits
5. **Test** in sandbox environment
6. **Report** integration status

## Notes
- Load `references/polar/` docs progressively
- Use `scripts/polar-webhook-verify.js` for webhook testing
