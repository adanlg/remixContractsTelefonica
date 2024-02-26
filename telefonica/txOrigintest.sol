// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleContract {
    uint public counter; // A state variable to keep track of the count
    address public lastTxOrigin; // A state variable to store the last transaction's origin

    // Function to increment the counter
    function increment() public {
        counter += 1;
    }

    // Function to set the lastTxOrigin variable to the transaction's origin
    function setTxOrigin() public {
        lastTxOrigin = tx.origin;
    }
}
