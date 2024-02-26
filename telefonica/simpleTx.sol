// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleMath {
    uint256 public globalVariable;

    // Constructor to initialize the global variable
    constructor(uint256 _initialValue) {
        globalVariable = _initialValue;
    }

    // Function to add a value to the global variable
    function addToGlobalVariable(uint256 _value) public {
        globalVariable += _value;
    }

    // Function to subtract a value from the global variable
    function subtractFromGlobalVariable(uint256 _value) public {
        require(globalVariable >= _value, "Subtraction would result in a negative value");
        globalVariable -= _value;
    }

    // Function to add and subtract with two parameters
    function addAndSubtract(uint256 _valueToAdd, uint256 _valueToSubtract) public {
        globalVariable += _valueToAdd;
        require(globalVariable >= _valueToSubtract, "Subtraction would result in a negative value");
        globalVariable -= _valueToSubtract;
    }
}
