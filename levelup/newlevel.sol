// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenA is ERC20, Ownable {
    constructor() ERC20("MyToken", "MTK") {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    function burn(address _from, uint256 amount) public {
        require(balanceOf(_from) >= amount, "Amount must be greater than 0");
        transfer(address(0), amount);
    }

}


contract TokenB is ERC20, Ownable {
    constructor() ERC20("MyToken", "MTK") {}

    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }

    function burn(address _from, uint256 amount) public {
        require(balanceOf(_from) >= amount, "Amount must be greater than 0");
        transfer(address(0), amount);
    }

}

import "@openzeppelin/contracts/access/Ownable.sol";


interface Itoken {
    function mint(address to, uint256 amount) external;

    function burn(address _from, uint256 amount) external;

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(address recipient, uint amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint amount) external returns (bool);

    function transferFrom(
        address sender,
        address recipient,
        uint amount
    ) external returns (bool);

    event Transfer(address indexed from, address indexed to, uint amount);
    event Approval(address indexed owner, address indexed spender, uint amount);
}

contract DEX_CTF is Ownable {
    Itoken public tokenA;
    Itoken public tokenB;
    //string private flag;
    uint256 public proportion;
    bool public swap;


    constructor(address _tokenA, address _tokenB){ //string memory _flag) {
        tokenA = Itoken(_tokenA);
        tokenB = Itoken(_tokenB);
        //flag = _flag;
    }

    function createPool(uint256 amountA, uint256 amountB) public onlyOwner {
        tokenA.mint(msg.sender, amountA);
        tokenB.mint(msg.sender, amountB);
        uint256 proportion =tokenB.balanceOf(address(this)) / tokenA.balanceOf(address(this));
        require(proportion >0);


    }

    function swapAforB(uint256 quantity) public  {
        require(tokenA.balanceOf(msg.sender)>= quantity, "Insufficient tokenA balance");
        require(( tokenA.balanceOf(address(this))+quantity)<( tokenB.balanceOf(address(this))-(quantity*proportion)),"Not enough liquidity for the swap");

        tokenA.transferFrom(msg.sender, address(this), quantity);
        uint256 receivedQuantity = quantity * proportion;
        tokenB.transferFrom(address(this),msg.sender, receivedQuantity);
        swap = true;
     
    }
    function swapBforA(uint256 quantity) public {
        require(quantity > proportion, "Not fair trade");
        require(tokenB.balanceOf(msg.sender) >= quantity, "Insufficient tokenB balance");
        require(( tokenB.balanceOf(address(this)) - quantity) >= ( tokenA.balanceOf(address(this)) + (quantity/proportion)), "Not enough liquidity for the swap");

        tokenB.transferFrom(msg.sender, address(this), quantity);
        uint256 receivedQuantity = quantity / proportion;
        tokenA.transferFrom(address(this), msg.sender, receivedQuantity);
        swap = true;
    }
    function mintA(uint256 amount) public {
        tokenA.mint(msg.sender,amount);
    }
    function mi() public view returns(uint256){
        tokenA.totalSupply();
    }
    function mintB(uint256 amount) public {
        tokenB.mint(msg.sender,amount);
        }

    function getFlag() public view {//(string memory){
        require(swap == true,"No has realizado nigun swap");
        require(tokenB.balanceOf(address(this)) > 0 && tokenA.balanceOf(address(this)) > 0, "Both token balances must be greater than 0");
        require(tokenB.balanceOf(address(this)) == tokenA.balanceOf(address(this)), "Token balances must be equal");

        //return flag;
    }



}

