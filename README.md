# ERC20 Token Project

This project demonstrates the deployment and usage of an ERC20 token using Hardhat and Alchemy. It includes functionality for pre-minting tokens, as well as the ability to burn and mint tokens.

## Prerequisites

Before getting started, make sure you have the following installed on your machine:

- Node.js
- npm (Node Package Manager)

## Getting Started

Follow these steps to clone the repository, install dependencies, and deploy the ERC20 token:

Clone the repository:

   git clone ...
   cd ...

   Install dependencies:
npm install

Configure Alchemy RPC Endpoint:

Create a .env file in the root directory of the project.
Set ALCHEMY_RPC_ENDPOINT to your Alchemy RPC endpoint.

Deploy the ERC20 token:
npx hardhat run scripts/deploy.js --network alchemy
this will deploy the ERC20 token contract to the specified Alchemy network.

# Interacting with the Contract
You can interact with the deployed ERC20 token contract using Remix. Follow these steps:

Open the Remix IDE in your browser: https://remix.ethereum.org/

Connect Remix to your desired Ethereum network:

Remix will load the contract's functions and events.
You can interact with the contract by calling its functions and providing the required parameters.
ERC20 Token Functions
The deployed ERC20 token contract includes the following functions:

burn(address from, uint256 amount): Burn a specified amount of tokens from your own address.
mint(address to, uint256 amount): Mint a specified amount of tokens to any address.

Feel free to explore and test the functionalities of the ERC20 token contract using Remix!
```
