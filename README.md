# SentinelLend (Foundry Lending Protocol)

SentinelLend is a hiring-optimized DeFi lending protocol monorepo focused on production engineering practices: risk controls, security-first design, automated monitoring, and clean developer operations.

## Why This Project

This repository is intentionally built to demonstrate signals recruiters and protocol teams screen for:
- smart contract architecture beyond tutorials
- threat-model-driven protocol design
- testing depth (unit + fuzz + invariants)
- deployment automation and operational runbooks
- off-chain bot integration for liquidations and monitoring
- full-stack integration readiness

## Day 1 Status (Architecture + Scaffolding)

Completed in this milestone:
- monorepo structure for `contracts`, `bot`, `frontend`, `ops`, and `docs`
- protocol specification drafts and architecture docs
- Foundry contracts workspace with compile-ready module skeletons
- CI workflow split by concern (`contracts`, `bot`, `frontend`, `security`)
- baseline developer tooling (`Makefile`, `.editorconfig`, `.env.example`, workspace config)

## Repository Structure

```text
.
├── contracts/            # Foundry contracts, scripts, and tests
├── bot/                  # Liquidation/risk-monitor bot (TypeScript)
├── frontend/             # Protocol dashboard app
├── docs/                 # Architecture, threat model, runbooks, audit notes
├── ops/                  # Monitoring configs and operational scripts
└── .github/workflows/    # CI pipelines
```

## Quick Start

### Contracts

```bash
cd contracts
forge build
forge test -vvv
```

### Bot

```bash
cd bot
pnpm install
pnpm test
```

### Frontend

```bash
cd frontend
pnpm install
pnpm test
```

## Day 1 Deliverables Mapping

- Spec and architecture: `docs/00-overview.md`, `docs/01-architecture.md`, `docs/03-risk-parameters.md`
- Diagrams: `docs/diagrams/protocol-flow.mmd`
- Compile-ready protocol modules: `contracts/src/`
- CI split: `.github/workflows/*.yml`

## Roadmap

- Day 2: core lending and accounting implementation
- Day 3: liquidation engine and oracle safety controls
- Day 4: fuzz/invariant suite + security gates
- Day 5: deployment scripts + keeper bot MVP
- Day 6: UI integration + E2E smoke tests
- Day 7: hardening, docs polish, demo packaging

## License

MIT
