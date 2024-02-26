// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Box {
    address public owner;
    bool public boxOpened;
    string private flag;

    event BoxOpened();

    constructor(address _owner, string memory _flag) {
        flag = _flag;
        owner = _owner; 
        boxOpened = false;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "No eres el owner");
        _;
    }

    function openBox() public onlyOwner {
        boxOpened = true;
        emit BoxOpened(); 
    }
    
    function getFlag() public view returns (string memory) {
        require(boxOpened == true, "La caja no esta abierta");
        return flag;
    }
}
