pragma solidity ^0.8.0;

contract KeccakHash {
    function hashString(string memory _text) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_text));
    }
}
