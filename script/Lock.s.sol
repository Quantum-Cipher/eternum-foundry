// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "../contracts/Lock.sol";

contract DeployLock is Script {
    function run() external {
        vm.startBroadcast();
        new Lock(block.timestamp + 1 days);
        vm.stopBroadcast();
    }
}

