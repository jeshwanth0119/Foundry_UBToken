// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "src/UBToken.sol";
import "forge-std/Script.sol";

contract UBTokenDeploy is Script {
    address private constant recipient = 0x9965507D1a55bcC2695C58ba16FB37d819B0A4dc;

    function run() public {
       
        uint256 initialSupply = 1_000_000 * 10**18;

      
        vm.startBroadcast();
        UBToken token = new UBToken(initialSupply);

    
        token.transfer(recipient, 100 * 10**18);

        
        vm.stopBroadcast();

        
        console.log("UBToken deployed at:", address(token));
        console.log("Recipient balance:", token.balanceOf(recipient));
    }
}
