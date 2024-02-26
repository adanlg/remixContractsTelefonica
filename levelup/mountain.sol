
// SPDX-License-Identifier: AGPL-3.0-or-later

import "./functions4.sol";

pragma solidity ^0.8.7;

contract Mountain {

    address public owner;
    bool public left_step;
    bool public right_step;
    bool public jump;
    string snippet_flag;
    uint8 public climbedMeters;
    functions4 public f;

    constructor(string memory _flag, functions4 _f){
        f = functions4(_f);
        owner = msg.sender;
        snippet_flag = _flag;
    }

    function getFlag() public view returns(string memory){
        require(climbedMeters > 3,"No has escalado lo sufuciente");
        return snippet_flag;
    }

    function execution_function(bytes memory _data) public {
        (bool success, bytes memory returnedData) = address(f).delegatecall(_data);
        require(success,"Delegada no correcta");
    }        
}