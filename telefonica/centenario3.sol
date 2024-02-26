pragma solidity ^0.8.0;

contract SimpleMessageContract {
    // Variable to store the owner's address
    address private owner;

    // Array to store messages
    string[] private messages;

    // Modifier to check if the caller is the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    // Constructor to set the initial owner
    constructor() {
        owner = msg.sender;
    }

    // Function to upload a message to the array (Only owner can call this)
    function uploadMessage(string memory newMessage) public onlyOwner {
        messages.push(newMessage);
    }

    // Function to retrieve a message by index
    function getMessage(uint index) public view returns (string memory) {
        require(index < messages.length, "Index out of bounds");
        return messages[index];
    }

    // Function to retrieve the full array of messages
    function getAllMessages() public view returns (string[] memory) {
        return messages;
    }

    // Function to transfer ownership (Only owner can call this)
    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner cannot be the zero address");
        owner = newOwner;
    }
}
