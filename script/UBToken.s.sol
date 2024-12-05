// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/UBToken.sol";
import "forge-std/console.sol"; // Add this import for logging

contract UBTokenDeploy {
    address private constant recipient = 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc;

    function run() public {
        // Deploy the UBToken contract with 1,000,000 tokens (18 decimals)
        uint256 initialSupply = 1_000_000 * 10**18;
        UBToken token = new UBToken(initialSupply);

        // Transfer 100 tokens to the recipient
        token.transfer(recipient, 100 * 10**18);

        // Log the deployed contract's address and the recipient's balance
        console.log("UBToken deployed at:", address(token));
        console.log("Recipient balance:", token.balanceOf(recipient));
    }
}
