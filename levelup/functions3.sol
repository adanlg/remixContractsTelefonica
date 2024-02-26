
// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.7;

contract functions3{

    address public user;
    address public owner;
    string snippet_flag;
    bool public fall;
    bool public easter_egg;
    uint8 public climbedMeters;

    constructor(){
        snippet_flag = "flag_in_the_world";
        owner = msg.sender;
    }

    function setOwner(uint8 _steps) public{
        owner = msg.sender;
        climbedMeters += _steps;
        fall = true;
    }
    
    function setUser(uint8 _steps) public {
        user = msg.sender;
        climbedMeters += _steps;
    }

    
}

//0x4d7e80f90000000000000000000000000000000000000000000000000000000000000004