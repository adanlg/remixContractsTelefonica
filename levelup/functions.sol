
// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.7;

contract functions{

    string snippet_flag;
    address public owner;
    uint256 public power;
    uint256 public stamina;

    constructor(uint256 _stamina){
        snippet_flag = "flag_in_the_world";
        power = 0;
        stamina = _stamina;
    }

    function blocks() public view returns(uint){
        return block.number;
    }

    function getPower() public view returns(){
        return power;
    }

    function addPower() public{
        power += 5;
    }
    //     function addPower(uint256 _power) public{
    //     power += _power;
    // }

    function addStamina() public{
        stamina += 1;
    }

    function delStamina() public{
        stamina -=1 ;
    }

    function addStaminaToPower() public{
        power += stamina;
    }

    function getFlag() private view returns(string memory){
        require(owner == msg.sender,"No eres propietario");
        return getFlag();
    }

    function setOwner() public{
        owner = msg.sender;
    }

    function setSnippetFlag() public{
        require(owner == msg.sender,"No eres propietario");
        snippet_flag = getFlag();
    }
    
}