// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GasGuessingChallenge  {
    string private  flag;
    uint private gasUsed;
    uint public initialGas;
    uint public finalGas;
    uint public gaspricetx;
    bool public openDoor;
    address public owner;

    constructor(string memory _flag, uint _gasUsed)  {
        flag = _flag;
        owner = msg.sender;
        gasUsed = _gasUsed;
    }

    modifier requireSpecificGas() {
        require(gasleft() < 2000000, "To many gas provided");
        _;
    } 

    modifier payMoreForGas() {
        require(tx.gasprice > (2 * gaspricetx), "Pay more to get your tx done faster!");
        _;
    } 

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }
    
    function getCurrentGasPrice() public {
        openDoor = true;
        gaspricetx = tx.gasprice;
    }
    
    function add(uint _num1, uint _num2) public payMoreForGas returns (uint) {
        require(openDoor == true,"The door must be oppened");
        uint result = _num1 + _num2;
        require(result == 100, "Improve your maths!");
        owner = msg.sender;
        return (result);
    }

    function subtract(uint _num1, uint _num2) public requireSpecificGas returns (uint) {
        require(openDoor == true,"The door must be oppened");
        initialGas = gasleft();
        uint result = _num1 - _num2;
        finalGas = gasleft();
        require(result == 100, "Improve your maths!");
        gasUsed = initialGas - finalGas;
        require (gasleft() >= 1999998, "Not gas enought");
        owner = msg.sender;
        return (result);
    }

    function getFlag() public view onlyOwner returns (string memory) {
        return flag;
    }
}
