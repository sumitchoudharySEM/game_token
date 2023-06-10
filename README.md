# SemTo Token Smart Contract
This is a Solidity smart contract for the SemTo token deployed on the Avalanche Fuji Chain. The SemTo token is an ERC20 token that represents a game token.

# Contract Details
Contract Name: semtoken
License: MIT
Solidity Version: 0.8.9
Imports:
ERC20.sol from OpenZeppelin Contracts: Token implementation.
Ownable.sol from OpenZeppelin Contracts: Provides an owner-only access control mechanism.
Functionality
# The SemTo token contract provides the following functionalities:

Constructor: The contract is initialized with the name "SemTo" and the symbol "ST". Additionally, the contract owner is granted an initial supply of 10,000 SemTo tokens.
mint: The owner of the contract can mint new SemTo tokens and assign them to a specified address.
createItem: The owner of the contract can create new items for the game by providing a name and price. Each item is assigned a unique item number.
userBalance: Returns the balance of SemTo tokens for the caller of the function.
getStuff: Allows users to purchase items by providing the item number. The function checks if the user has sufficient SemTo tokens, approves the transfer, and adds the item to the user's assets.
transferTok: Allows users to transfer SemTo tokens to another address.
burn: Allows users to burn (destroy) a specified amount of their own SemTo tokens.
Additional Features
The SemTo token contract also includes the following additional features:

userAssets: A mapping that stores the assets (item numbers) owned by each address.
items: A mapping that stores the details (name, item number, price) of each item.
totalItemNum: A counter that keeps track of the total number of items created.
# Deployment
This contract has been deployed on the Avalanche Fuji Chain. You can interact with the contract using Remix editor or any other Ethereum-compatible development tool. The contract is compatible with the ERC20 token standard and supports typical ERC20 token operations such as transferring tokens, checking balances, and approving token transfers.