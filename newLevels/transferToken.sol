// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC20 {
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);

}

contract MyContract {
    IERC20 public erc20Token;
    string private flag;
    bool public canReturnFlag;
    address public old_women;

    constructor(IERC20 _erc20Token, string memory _flag, address _old_women) {
        erc20Token = _erc20Token;
        flag = _flag;
        old_women = _old_women;
    }

    function transferToken(address from, address to, uint256 amount) public {
        require(erc20Token.transferFrom(from, to, amount));
        canReturnFlag = true;
    }

    function getFlag() public view returns (string memory) {
        require(erc20Token.balanceOf(old_women) > 0, "La anciana sigue mala");
        require(canReturnFlag == true, "No puedes pasar");
        return flag;
    }
}
