// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.27;

import {Test} from "forge-std/Test.sol";
import {HelloArc} from "../src/HelloArc.sol";

contract HelloArcTest is Test {
    HelloArc internal hello;

    event Greeted(address indexed by, string message);

    function setUp() public {
        hello = new HelloArc("hello arc");
    }

    function test_initialGreeting() public view {
        assertEq(hello.greeting(), "hello arc");
    }

    function test_deployerRecorded() public view {
        assertEq(hello.deployer(), address(this));
    }

    function test_greetUpdatesState() public {
        hello.greet("audit-protected");
        assertEq(hello.greeting(), "audit-protected");
    }

    function test_greetEmitsEvent() public {
        vm.expectEmit(true, false, false, true, address(hello));
        emit Greeted(address(this), "hello again");
        hello.greet("hello again");
    }

    function testFuzz_greetAcceptsAnyString(string calldata input) public {
        hello.greet(input);
        assertEq(hello.greeting(), input);
    }
}
