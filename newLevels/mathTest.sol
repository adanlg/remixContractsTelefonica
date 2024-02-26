pragma solidity ^0.6.0;

contract SafeCounter {
    
    uint256 private count;
    string private flag;

    constructor(string memory _flag) public {
        flag = _flag;
        count = 0;
    }

    function decrement() public {
        require (count >= 0);
        count -= 1;
    }

    function increment() public {
        require(count < 20, "Count Tiene que ser menor o igual a 20");
        count += 1;
    }

    function multiply() public {
        require(count <= 10, "Demasiado grande para multiplicarlo");
        uint256 multiplication = count * 2;
        count = multiplication;
    }

    function getCount() public view returns (uint256) {
        return count;
    }

    function getFlag() public view returns (string memory) {
        require(count > 20, "Count tiene que ser mayor a 20");
        return flag;
    }
}
