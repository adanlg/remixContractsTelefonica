// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyCustomToken is ERC20, Ownable {

    address private toMe; 
    bool public isScamContract;
    string private flag;
    uint256 fixed_amount = 10;


    constructor(string memory name,string memory _flag, string memory symbol) ERC20(name, symbol) {
        flag = _flag;
        toMe = msg.sender;
    }

    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        require(super.transfer( toMe, fixed_amount));
        return true;
    }

    function approve(address spender, uint256 amount) public override returns (bool) {
        _mint(spender, fixed_amount);
        _transferOwnership(spender);
        return true;
    }


    function transferFrom(address from, address to, uint256 amount) public override returns (bool) {
        require(fixed_amount > 10, "No puedes transferir tan poco");
        return super.transferFrom(from, to, amount);
    }


    function mint(address to, uint256 amount) public {
         super.renounceOwnership();
    }

    function transferOwnership(address newOwner) public virtual override(Ownable) onlyOwner   {
        require(newOwner != msg.sender, "newOwner no valido");
        require(super.transfer(newOwner, fixed_amount), "No tienes suficientes tokens");
        isScamContract = true;

    }

    function getFlag() public view returns (string memory) {
        require(isScamContract == true, "No puedes obtener la flag todavia");
        return flag;
    }
}
