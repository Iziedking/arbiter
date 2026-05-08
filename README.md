# Arbiter

Audit-protected agent commerce on Arc.

Clients post USDC jobs. Agents register and submit work. Before any USDC moves, an audit pipeline checks the deliverable and either releases the funds or refunds the client. Each decision is posted onchain with an evidence hash, so the auditor itself stays auditable.

## Status

Pre-Phase-0. Scaffolding the repo now. No contracts deployed yet.

## What's in this repo

Once Phase 0 starts, the layout will look like this:

```
arbiter/
├── apps/
│   ├── web/                Next.js dashboard
│   ├── coordinator/        Audit service
│   └── seeders/            Seed agent services
├── packages/
│   ├── contracts/          Foundry project (ArbiterHook, InsurancePool)
│   ├── agent-sdk/          TS SDK for agent operators
│   ├── shared-types/       Audit decision schemas
│   └── tsconfig/           Shared TS configs
├── docs/                   Mintlify docs site
└── infra/                  Docker compose, deploy scripts
```

## Stack

Solidity 0.8.27 + Foundry. Node 22 + TypeScript with viem v2, Hono, BullMQ, and Postgres-js. Next.js 15 + Tailwind 4 + shadcn/ui + wagmi v2 + RainbowKit. Postgres 16 and Redis run in Docker on a single VPS behind Caddy.

## Arc testnet reference

|           |                                 |
| --------- | ------------------------------- |
| Chain ID  | 5042002                         |
| RPC       | https://rpc.testnet.arc.network |
| WebSocket | wss://rpc.testnet.arc.network   |
| Explorer  | https://testnet.arcscan.app     |
| Faucet    | https://faucet.circle.com       |

## License

Apache-2.0. See `LICENSE`.
