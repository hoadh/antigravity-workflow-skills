---
description: Implement payment integration with SePay.vn
---

Implement SePay payment integration for Vietnamese market.

## Workflow

1. **Activate** `payment-integration` skill
2. **Load** SePay-specific references from skill
3. **Analyze** project requirements (payment methods, bank accounts)
4. **Implement** following the SePay integration workflow:
   - Auth setup → API integration → Webhooks → QR codes
5. **Test** in sandbox environment
6. **Report** integration status

## Notes
- Load `references/sepay/` docs progressively
- Use `scripts/sepay-webhook-verify.js` for webhook testing
