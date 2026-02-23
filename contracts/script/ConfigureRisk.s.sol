// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";

contract ConfigureRisk is Script {
    function run() external {
        vm.startBroadcast();
        // Day 1 placeholder: wire risk params in Day 2 when core market state is finalized.
        vm.stopBroadcast();
    }
}
