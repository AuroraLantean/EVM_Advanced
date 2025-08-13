# EVM_Advanced

## Installation

Install Foundry https://getfoundry.sh/introduction/installation/

Follow the doc: https://getfoundry.sh/introduction/getting-started

Use Sepolia network for testing smart contracts until 2027

## TODO
ERC 20, 741, 3643, 1400


## Run Tests

To run test: `forge test --match-path test/Counter.t.sol -vv`

## Environment Variables

Implement the .env file and run `source .env` before you run any package.json script that requires environment variables.

Make `.env` file from `.env.example`.

Then fill out the following in that .env file:

```
MAINNET_RPC_URL=
SEPOLIA_RPC_URL=
GOERLI_RPC_URL=
ANVIL_RPC=http://127.0.0.1:8545
ETHERSCAN_API_KEY=

# Live Network Contracts
TOKEN_ADDR=
NFT_ADDR=
PoolAddressesProviderAaveV3Sepolia=

# Deploy Properties
MNEMONIC=
SIGNER=
PRIVATE_KEY=
ANVIL4=
ANVIL4_PRIVATE_KEY=
```
