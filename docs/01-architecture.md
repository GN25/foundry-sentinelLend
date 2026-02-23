# Architecture

## Components

- `MarketFactory`: deploys and registers isolated markets
- `LendingMarket`: supply/borrow/repay/withdraw account state and indexes
- `InterestRateModel`: utilization-driven borrow/supply rates (kinked model)
- `LiquidationEngine`: validates and executes liquidations
- `OracleRouter`: canonical price source with safety checks
- `Guardian`: emergency pause authority for high-risk actions

## Data Flow

1. Supplier provides liquidity to market.
2. Borrower posts collateral and borrows base asset.
3. Interest accrues via indexes in market state.
4. Oracle updates health factors.
5. Unhealthy positions become liquidatable.
6. Keeper bot calls liquidation entrypoints.

## Security Boundaries

- each market is isolated to ring-fence risk
- oracle freshness gate blocks unsafe borrows
- pause controls available for incident response
- liquidation checks are explicit and deterministic
