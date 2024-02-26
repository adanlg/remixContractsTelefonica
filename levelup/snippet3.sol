
// SPDX-License-Identifier: AGPL-3.0-or-later

import "./functions3.sol";

pragma solidity ^0.8.7;

contract Snippet3 {

    address public owner;
    address public user;
    string snippet_flag;
    bool public fall;
    bool public easter_egg;
    uint8 public climbedMeters;
    functions3 public f;

    constructor(string memory _flag, functions3 _f){
        f = functions3(_f);
        owner = msg.sender;
        snippet_flag = _flag;
    }

    function getFlag() public returns(string memory){
        require(owner == msg.sender,"No eres el propietario del contrato");
        require(climbedMeters > 3,"No has escalado lo sufuciente");
        if (!fall){
            easter_egg = true;
        }
        return snippet_flag;
    }

    function execution_function(bytes memory _data) public {
        (bool success, bytes memory returnedData) = address(f).delegatecall(_data);
        require(success,"Delegada no correcta");
    }        
}

//setOwner ( bad response) 0x23a19a000000000000000000000000000000000000000000000000000000000000000004