// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.27;

import {Script, console} from "forge-std/Script.sol";
import {HelloArc} from "../src/HelloArc.sol";

contract DeployHelloArc is Script {
    function run() external {
        uint256 pk = vm.envUint("DEPLOYER_PRIVATE_KEY");
        string memory initial = vm.envOr("HELLO_ARC_GREETING", string("hello arc"));

        vm.startBroadcast(pk);
        HelloArc hello = new HelloArc(initial);
        vm.stopBroadcast();

        console.log("HelloArc deployed at:", address(hello));
        console.log("Initial greeting:    ", hello.greeting());
    }
}
