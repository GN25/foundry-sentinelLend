# Threat Model

## Assets to Protect

- supplier liquidity
- collateral accounting integrity
- liquidation fairness and solvency
- oracle input correctness

## Primary Threats

- stale or manipulated oracle price
- rounding or index drift causing hidden insolvency
- reentrancy during state transitions
- griefing via dust operations and pathological loops
- unauthorized privileged actions

## Mitigations (Planned)

- staleness checks and bounded oracle adapters
- CEI pattern and explicit custom errors
- `nonReentrant` where needed
- gas-safe iteration strategy
- strict role boundaries and immutable config where possible
