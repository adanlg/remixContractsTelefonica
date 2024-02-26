pragma solidity ^0.7.0; // Specify the Solidity version

contract GuessTheRandomNumber {
    uint256 public consecutiveWins;
    string private flag;
    address public lastWinner;

    constructor(string memory _flag) payable {
        flag = _flag;
        consecutiveWins = 0;
        lastWinner = address(0);
    }

    function guess(uint256 _guess) public {
        uint256 answer = uint256(
            keccak256(abi.encodePacked(blockhash(block.number - 1), block.timestamp))
        );
        
        if (_guess == answer) {
            if (lastWinner == msg.sender) {
                consecutiveWins++;
            } else {
                consecutiveWins = 1;
                lastWinner = msg.sender;
            }

            if (consecutiveWins >= 10) {
                (bool sent, ) = msg.sender.call{value: 1 ether}("");
                require(sent, "Failed to send Ether");
            }
        } else {
            consecutiveWins = 0;
        }
    }

    function getFlag() public view returns (string memory) {
        require(consecutiveWins >= 10 && lastWinner == msg.sender, "Not eligible for flag");
        return flag;
    }
}


//Tendria que cambiar para que no se adivine guess sino si es par o nones. Debatirlo antes.