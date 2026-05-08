// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.27;

/// @title HelloArc
/// @notice Phase 0 smoke-test contract. Used to confirm that compile, deploy,
///         and verify all work end to end against Arc Testnet before any of
///         the audit-protocol contracts go in.
contract HelloArc {
    string public greeting;
    address public immutable deployer;

    event Greeted(address indexed by, string message);

    constructor(string memory initial) {
        greeting = initial;
        deployer = msg.sender;
    }

    function greet(string calldata message) external {
        greeting = message;
        emit Greeted(msg.sender, message);
    }
}
