// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SendToMeToken is ERC20, Ownable {
    string private flag;

    constructor(string memory _name, string memory _symbol, string memory _flag) ERC20(_name, _symbol) {
        flag = _flag;
    }

    function getFlag() public view returns (string memory) {
        return flag;
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public onlyOwner {
        _burn(account, amount);
    }
}
