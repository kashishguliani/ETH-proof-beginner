# ETH-proof-beginner
The smart contract is released under the MIT license, as indicated by the SPDX-License-Identifier: MIT comment.

The contract is written in Solidity version 0.8.18.

The contract is named "Token" and represents a basic token implementation.

Public Variables:

tokenName: A public string variable representing the name of the token, set to "21BCS3352".
tokenSymbol: A public string variable representing the symbol of the token, set to "Kashish".
totalSupply: A public unsigned integer variable representing the total supply of the token, initialized to 10000.
Mapping Variable:

balances: A public mapping that associates Ethereum addresses (type address) with their corresponding token balances (type uint). This mapping is used to keep track of the token balance of each address.
Mint Function:

mintTokens: A public function that allows the contract owner (or anyone with access to this function) to mint new tokens and assign them to a specified address.
Parameters: _address is the address to which the newly minted tokens will be assigned, and _amount is the number of tokens to be minted.
The totalSupply is increased by the _amount, and the balance of _address is increased by _amount.
Burn Function:

burnTokens: A public function that allows the contract owner (or anyone with access to this function) to burn (destroy) tokens from a specified address.
Parameters: _address is the address from which the tokens will be burned, and _amount is the number of tokens to be burned.
The function checks if the balance of _address is greater than or equal to _amount using a require statement. If not, it reverts the transaction with an error message.
If the balance check passes, the totalSupply is decreased by _amount, and the balance of _address is reduced by _amount.
Please note that this is a simple example and lacks several important features that a real-world token contract should have, such as transfer functions, events, and access control mechanisms. Additionally, deploying and using this contract on the Ethereum network would require appropriate wallet interactions and deployment considerations.
