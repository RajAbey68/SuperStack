---
name: real-estate-investment-uk
description: Use for property investment, short-term rental/Airbnb deal analysis, buy-to-let, cap rate, cash-on-cash return, NOI, DSCR, occupancy breakeven, rent-to-price, market comps, AirDNA-style STR analysis, and investor-ready real estate reports. Defaults to GBP when currency is not specified.
---

# Real Estate Investment UK

Default to GBP unless the user specifies another currency.

## Deal Workflow

1. Define property type, strategy, location, hold period, financing, and target output.
2. Gather assumptions: purchase price, deposit/equity, debt terms, rent/ADR, occupancy, fees, operating expenses, capex, taxes, and management.
3. Build pro forma: gross income, vacancy, effective gross income, opex, NOI, debt service, pre-tax cash flow.
4. Calculate returns and risk metrics.
5. Stress test occupancy, ADR/rent, interest rate, opex, and capex.
6. Give a go/no-go view with assumptions, risks, and what data would change the answer.

## Core Metrics

- **NOI** = effective gross income - operating expenses.
- **Cap rate** = NOI / property value.
- **Cash-on-cash** = annual pre-tax cash flow / total cash invested.
- **DSCR** = NOI / annual debt service.
- **Occupancy breakeven** = fixed costs + debt service divided by gross potential income.
- **STR revenue** = ADR x occupied nights, less platform/cleaning/management assumptions.

## STR/Airbnb Checks

- Seasonality and local events.
- Local planning/licensing restrictions.
- Cleaning and linen cost per turn.
- Channel fees and payment processing.
- Management workload or manager fee.
- Base, bear, and bull occupancy/ADR.

## Output Standard

Always include:

- Assumptions table.
- Monthly and annual pro forma.
- Cash-on-cash and occupancy breakeven.
- Sensitivity table for the two assumptions with highest impact.
- Recommendation with confidence level.

## Source Notes

Distilled from `github.com/aznatkoiny/zAI-Skills/real-estate-investment`.
