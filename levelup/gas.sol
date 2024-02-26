// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";



contract GasGuessingChallenge is Ownable {
    string private  flag;
    uint public gaspricetx;
    uint public gaspricetx2=1;
    // address public owner;

    constructor(string memory _flag)  {
        flag = _flag;
        //owner = msg.sender;
        gaspricetx = 1;
        gaspricetx = tx.gasprice;
    }

    // modifier onlyOwner() {
    //     require(msg.sender == owner, "You are not the owner");
    //     _;
    // }
    
    function add(uint _num1, uint _num2) public returns (uint) {
        //require(tx.gasprice > (2 * gaspricetx), "Pay more to get your tx done faster!");
        gaspricetx2 = tx.gasprice;
        uint result = _num1 + _num2;
        require(result == 100, "Improve your maths!");
        // owner = msg.sender;
        _transferOwnership(msg.sender);
        return (result);
    }

    function getFlag() public view onlyOwner returns (string memory) {
        return flag;
    }
}


