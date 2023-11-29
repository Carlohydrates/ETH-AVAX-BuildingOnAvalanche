# ETH-AVAX-BuildingOnAvalanche

#DegenToken ERC-20 Token Smart Contract
This Ethereum smart contract implements an ERC-20 token named "Degen" with the symbol "DGN." It extends the functionalities of the OpenZeppelin ERC-20 and Ownable contracts.

#Contract Features:
##Minting New Tokens
The contract provides a mint function that allows the owner to create and distribute new tokens to specific addresses.
###Redeeming Tokens
Players can redeem tokens for in-game items using the redeem function. The choices for redemption are simplified for demonstration purposes. Players must have a sufficient balance, and the specified number of tokens is burned.
###Burning Tokens
Token holders can burn their own tokens using the burn function, ensuring they have a sufficient balance.
###Transferring Tokens
The contract allows token holders to transfer tokens to other addresses through the transferTokens function. This function uses the ERC-20 approve and transferFrom mechanism.

##How to Use:
1. Deploy the smart contract on the Ethereum blockchain.
2. The deployer becomes the owner and can mint new tokens using the mint function.
3. Users can interact with the contract to redeem, burn, and transfer tokens as described above.
