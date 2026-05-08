# @arbiter/contracts

Foundry project for Arbiter's onchain pieces: the audit hook, the insurance pool, and the Phase 0 smoke-test contract.

## Layout

```
src/         Solidity sources
test/        Foundry tests
script/      Deploy / interaction scripts
lib/         Submoduled deps (forge-std for now)
```

## Prerequisites

`foundryup` installed and on PATH. Verify with `forge --version` (we develop against `1.7.x`).

## Common commands

|                                 |                                             |
| ------------------------------- | ------------------------------------------- |
| `forge build`                   | Compile everything in `src/`                |
| `forge test`                    | Run the test suite                          |
| `FOUNDRY_PROFILE=ci forge test` | Same suite with the higher fuzz-run profile |
| `forge fmt`                     | Format Solidity sources                     |
| `forge fmt --check`             | CI-style check without rewriting            |

## Phase 0 smoke test

`HelloArc.sol` is a deliberately tiny contract used to confirm the compile, deploy, and verify pipeline against Arc Testnet before anything more interesting goes onchain.

Deploy from the repo root:

```bash
forge script packages/contracts/script/DeployHelloArc.s.sol:DeployHelloArc \
  --rpc-url arc_testnet \
  --broadcast
```

`DEPLOYER_PRIVATE_KEY` must be set in the environment. The RPC alias `arc_testnet` resolves to `ARC_RPC_HTTP` from the root `.env`.
