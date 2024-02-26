// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionSelectors {

    function getSelector(string memory _func) public pure returns (bytes4) {
        return bytes4(keccak256(bytes(_func)));
    }

    function executeFunction(string memory _funcSignature, uint256 _params) public pure returns (bytes memory) {
        bytes4 selector = getSelector(_funcSignature);
        return abi.encodeWithSelector(selector, _params);
    }


}

