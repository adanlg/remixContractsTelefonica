pragma solidity ^0.8.0;

contract Bank {
    uint256 private commission = 2;
    uint256 public exchangeAmount;
    uint256 public cost;
    string private flag;

    constructor(string memory _flag) {
        flag = _flag;
    }

    function exchangeLondon(uint256 _exchangeAmount) public returns (uint256) {
        cost = (_exchangeAmount + 4) - 4;
        cost += commission;
        exchangeAmount = _exchangeAmount;
        return cost;
    }

    function exchangeFrance(uint256 _exchangeAmount) public returns (uint256) {
        cost = (_exchangeAmount - 4) + 4;
        cost += commission;
        exchangeAmount = _exchangeAmount;
        return cost;
    }

    function exchangeArgentina(uint256 _exchangeAmount) public returns (uint256) {
        cost = (_exchangeAmount * 4) / 4;
        cost += commission;
        exchangeAmount = _exchangeAmount;
        return cost;
    }

    function exchangePoland(uint256 _exchangeAmount) public returns (uint256) {
        cost = (_exchangeAmount / 4) * 4;
        cost += commission;
        exchangeAmount = _exchangeAmount;
        return cost;
    }

    function getFlag() public view returns (string memory) {
        require(exchangeAmount > cost, "No has conseguido profit");
        return flag;
    }
}
