// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MultiSigWallet {
    event Deposit(address indexed sender, uint amount, uint balance);
    event SubmitTransaction(
        address indexed owner,
        uint indexed txIndex,
        address indexed to,
        uint value,
        bytes data
    );
    event ConfirmTransaction(address indexed owner, uint indexed txIndex);
    event RevokeConfirmation(address indexed owner, uint indexed txIndex);
    event ExecuteTransaction(address indexed owner, uint indexed txIndex);
    event OwnerAdded(address indexed owner);
    event OwnerRemoved(address indexed owner);

    address[] public owners;
    mapping(address => bool) public isOwner;
    uint public constant MAX_OWNERS = 3;
    uint public numConfirmationsRequired = 2;

    uint256 private commission = 2;
    uint256 public exchangeAmount;
    uint256 public cost;
    string private flag;

    struct Transaction {
        address to;
        uint value;
        bytes data;
        bool executed;
        uint numConfirmations;
    }

    mapping(uint => mapping(address => bool)) public isConfirmed;
    Transaction[] public transactions;

    modifier onlyOwner() {
        require(isOwner[msg.sender], "not owner");
        _;
    }

    modifier txExists(uint _txIndex) {
        require(_txIndex < transactions.length, "tx does not exist");
        _;
    }

    modifier notExecuted(uint _txIndex) {
        require(!transactions[_txIndex].executed, "tx already executed");
        _;
    }

    modifier notConfirmed(uint _txIndex) {
        require(!isConfirmed[_txIndex][msg.sender], "tx already confirmed");
        _;
    }

    constructor(address _firstOwner) {
        require(_firstOwner != address(0), "invalid owner");
        isOwner[_firstOwner] = true;
        owners.push(_firstOwner);
    }

    function addOwner(address _newOwner) public {
        require(_newOwner != address(0), "invalid owner");
        require(!isOwner[_newOwner], "owner already exists");
        require(owners.length < MAX_OWNERS, "max owners reached");

        isOwner[_newOwner] = true;
        owners.push(_newOwner);

        emit OwnerAdded(_newOwner);
    }

    function removeOwner(address _owner) public {
        require(isOwner[_owner], "not an owner");
        require(owners.length > 1, "cannot remove last owner");

        isOwner[_owner] = false;
        for (uint i = 0; i < owners.length; i++) {
            if (owners[i] == _owner) {
                owners[i] = owners[owners.length - 1];
                owners.pop();
                break;
            }
        }

        emit OwnerRemoved(_owner);
    }

    receive() external payable {
        emit Deposit(msg.sender, msg.value, address(this).balance);
    }

    function submitTransaction(
        address _to,
        uint _value,
        bytes memory _data
    ) public onlyOwner {
        uint txIndex = transactions.length;

        transactions.push(
            Transaction({
                to: _to,
                value: _value,
                data: _data,
                executed: false,
                numConfirmations: 0
            })
        );

        emit SubmitTransaction(msg.sender, txIndex, _to, _value, _data);
    }

    function confirmTransaction(uint _txIndex)
        public
        onlyOwner
        txExists(_txIndex)
        notExecuted(_txIndex)
        notConfirmed(_txIndex)
    {
        Transaction storage transaction = transactions[_txIndex];
        transaction.numConfirmations += 1;
        isConfirmed[_txIndex][msg.sender] = true;

        emit ConfirmTransaction(msg.sender, _txIndex);
    }

    function executeTransaction(uint _txIndex)
        public
        onlyOwner
        txExists(_txIndex)
        notExecuted(_txIndex)
    {
        Transaction storage transaction = transactions[_txIndex];

        require(
            transaction.numConfirmations >= numConfirmationsRequired,
            "cannot execute tx"
        );

        transaction.executed = true;

        (bool success, ) = transaction.to.call{value: transaction.value}(transaction.data);
        require(success, "tx failed");

        emit ExecuteTransaction(msg.sender, _txIndex);
    }

    function revokeConfirmation(uint _txIndex)
        public
        onlyOwner
        txExists(_txIndex)
        notExecuted(_txIndex)
    {
        Transaction storage transaction = transactions[_txIndex];

        require(isConfirmed[_txIndex][msg.sender], "tx not confirmed");

        transaction.numConfirmations -= 1;
        isConfirmed[_txIndex][msg.sender] = false;

        emit RevokeConfirmation(msg.sender, _txIndex);
    }

    function getOwners() public view returns (address[] memory) {
        return owners;
    }

    function getTransactionCount() public view returns (uint) {
        return transactions.length;
    }

    function getTransaction(
        uint _txIndex
    )
        public
        view
        returns (
            address to,
            uint value,
            bytes memory data,
            bool executed,
            uint numConfirmations
        )
    {
        Transaction storage transaction = transactions[_txIndex];

        return (
            transaction.to,
            transaction.value,
            transaction.data,
            transaction.executed,
            transaction.numConfirmations
        );
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
        /*
    function 0x19a0() private { 
        require(_exchangeAmount > _cost, Error('No has conseguido profit'));
        v0 = 0x243d(array_6.length);
        v1 = new bytes[](v0);
        v2 = v3 = v1.data;
        v4 = 0x243d(array_6.length);
        if (!v4) {
            return v1;
        } else if (31 < v4) {
            v5 = v6 = array_6.data;
            do {
                MEM[v2] = STORAGE[v5];
                v5 += 1;
                v2 += 32;
            } while (v3 + v4 <= v2);
            return v1;
        } else {
            MEM[v3] = array_6.length >> 8 << 8;
            return v1;
        }
    }
    */
}
