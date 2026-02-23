// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";

contract SeedScenario is Script {
    function run() external {
        vm.startBroadcast();
        // Day 1 placeholder: seed market state for integration demos.
        vm.stopBroadcast();
    }
}
