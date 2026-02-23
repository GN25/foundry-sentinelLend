// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {MarketFactory} from "src/core/MarketFactory.sol";

contract Deploy is Script {
    function run() external returns (MarketFactory factory) {
        vm.startBroadcast();
        factory = new MarketFactory();
        vm.stopBroadcast();
    }
}
