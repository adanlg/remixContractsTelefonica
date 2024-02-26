pragma solidity ^0.8.0;

contract Chef {
    address public owner;

    constructor(address _owner) {
        owner = _owner;
    }

    function onlyOwner() public virtual {

    }
}

contract HiddenRecipe is Chef {
    string private flag;
    bool public canGetFlag;

    constructor(address _owner, string memory _flag) Chef(_owner) {
        flag = _flag;
    }

    function onlyOwner() public override {
        require(owner == msg.sender, "No eres el propietario del contrato");
        owner = msg.sender;
    }

    function hide() public {
        require(msg.sender != tx.origin, "Sender must be different from tx.origin");
        uint256 codeSize = address(this).code.length;
        require(codeSize == 0, "Contract must not have code");

        super.onlyOwner(); 
        canGetFlag = true;
    }

    function getFlag() public view returns (string memory) {
        require(canGetFlag == true, "No puedes pasar");
        return flag;
    }
}
