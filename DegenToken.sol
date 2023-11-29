// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    // Constructor
    constructor() ERC20("Degen", "DGN") Ownable(msg.sender){}

    // Mint new tokens (only owner)
    function mint(address to, uint256 value) external onlyOwner {
        _mint(to, value);
    }

    // Redeem tokens (simplified, you might want to implement an actual in-game store)
    function redeem(uint256 value, uint256 choice) external {
        require(balanceOf(msg.sender) >= value, "Insufficient balance");
        if (choice == 1) {
            require(value >= 50, "Insufficient Tokens");
            _burn(msg.sender, value);
        } else if (choice == 2) {
            require(value >= 100, "Insufficient Tokens");
            _burn(msg.sender, value);
        } else if (choice == 3) {
            require(value >= 150, "Insufficient Tokens");
            _burn(msg.sender, value);
        } else {
            revert("Invalid choice");
        }
    }

    // Burn tokens
    function burn(uint256 value) external {
        require(balanceOf(msg.sender) >= value, "Insufficient balance");
        _burn(msg.sender, value);
    }

    function transferTokens(address _receiver, uint256 _value) external {
        require(balanceOf(msg.sender) >= _value, "Insufficient balance");
        approve(msg.sender, _value);
        transferFrom(msg.sender, _receiver, _value);
    }
}
