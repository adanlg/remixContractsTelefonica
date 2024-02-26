// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract HouseToken is ERC20, ERC20Burnable, Ownable, ERC20Permit {

    uint256 public constant MINT_LIMIT = 1000000;
    constructor()
        ERC20("HouseToken", "HT")
        Ownable()
        ERC20Permit("HouseToken")
    {
        _mint(msg.sender, 1 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
         require(amount <= MINT_LIMIT, "ERC20Mintable: cannot mint more than the limit");
        _mint(to, amount);
    }
}