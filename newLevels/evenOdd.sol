pragma solidity ^0.8.0;

contract GuessEvenOrOdd {
    uint256 public consecutiveWins;
    string private flag;
    address public lastWinner;

    constructor(string memory _flag) payable {
        flag = _flag;
        consecutiveWins = 0;
        lastWinner = address(0);
    }

    function evenOdd(uint256 _yourChoice) public {

        uint256 random = uint256(
            keccak256(abi.encodePacked(blockhash(block.number - 1), block.timestamp))
        );

        uint256 totalParity = ((random + _yourChoice) %2);
        if (totalParity == 0) {
            if (lastWinner == msg.sender) {
                consecutiveWins++;
            } else {
                consecutiveWins = 1;
                lastWinner = msg.sender;
            }

        } else {
            consecutiveWins = 0;
        }
    }

    function getFlag() public view returns (string memory) {
        require(consecutiveWins >= 10 && lastWinner == msg.sender, "No tienes 10 victorias seguidas");
        return flag;
    }
}
