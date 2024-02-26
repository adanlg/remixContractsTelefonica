pragma solidity ^0.8.0;

contract SimpleMessageDeleteContract {
    address private owner;
    string[] private messages;

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function uploadMessage(string memory newMessage) public onlyOwner {
        messages.push(newMessage);
    }

    function getMessage(uint index) public view returns (string memory) {
        require(index < messages.length, "Index out of bounds");
        return messages[index];
    }

    function getAllMessages() public view returns (string[] memory) {
        return messages;
    }
    
    function deleteMessage(uint index) public onlyOwner {
        require(index < messages.length, "Index out of bounds");

        for (uint i = index; i < messages.length - 1; i++) {
            messages[i] = messages[i + 1];
        }

        messages.pop();
    }

    function transferOwnership(address newOwner) public onlyOwner {
        require(newOwner != address(0), "New owner cannot be the zero address");
        owner = newOwner;
    }
}
