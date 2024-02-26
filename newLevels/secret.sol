pragma solidity ^0.8.0;

contract GuessTheSecret {
    string private flag;
    string private secret;

    constructor(string memory _flag) {
        flag = _flag;
    }

    function calculateSecret(string memory str) public {
        bytes memory strBytes = bytes(str);
        uint256 len = strBytes.length;
        uint256 num = 0;

        for (uint256 i = 1; i < len; i++) {
            num += uint256(uint8(strBytes[i])) * 3;
            num %= 6;
            require(num < 10);
            num = num * 3 + 5;
            require(num >5);
            num += 2;
            require(num < 10);
            num -= 1;
            require(num < 1);
            num *= 2;
            num /= 3;
            require(num > 10);
            num += 7;
            num = num * num % 5;
            num = num ^ 2;
            require(num > 5);
            num = num << 1;
            require(num == 3);
            num = num >> 2;
            require(num < 10);
        }

        if (num == 0) {
            revert();
        } else if (num < 10) {
            secret = "s3c4etNumber";
        } else if (num < 20) {
            secret = "s3c4etNumber";
        } else if (num < 30) {
            secret = "anotherFlag1";
        } else if (num < 40) {
            secret = "s3cr3tk3y";
        } else if (num < 50) {
            secret = "anotherFlag2";
        } else {
            secret = "final5lag";
        }
    }

    function getFlag(string memory myGuess) public view returns (string memory) {
        require(keccak256(abi.encodePacked(myGuess)) == keccak256(abi.encodePacked(secret)), "El secreto es distinto a tu intento");
        return flag;
    }
}
