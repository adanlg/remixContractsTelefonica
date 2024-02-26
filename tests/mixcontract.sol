    // Decompiled by library.dedaub.com
    // 2024.01.16 08:09 UTC
    // Compiled using the solidity compiler version 0.8.23

pragma solidity ^0.8.20;

contract MultiSigWallet {
    // Data structures and variables inferred from the use of storage instructions
    uint256[] _owners; // STORAGE[0x0]
    mapping (uint256 => uint256) _isOwner; // STORAGE[0x1]
    uint256 _numConfirmationsRequired; // STORAGE[0x2]
    uint256 stor_3; // STORAGE[0x3]
    uint256 _exchangeAmount; // STORAGE[0x4]
    uint256 _cost; // STORAGE[0x5]
    uint256[] array_6; // STORAGE[0x6]
    mapping (uint256 => mapping (uint256 => uint256)) _isConfirmed; // STORAGE[0x7]
    struct_954[] _getTransactionCount; // STORAGE[0x8]

    struct StructName {
        uint256 field0;
        uint256 field1;
        uint256[] field2;
        uint256 field3;
        uint256 field4;
    }
    // Events
    event Deposit (address, uint256, uint256);
    event OwnerRemoved(address);
    event RevokeConfirmation(address, uint256);
    event OwnerAdded(address);
    event ConfirmTransaction(address, uint256);
    event SubmitTransaction(address, uint256, address, uint256, bytes);
    event ExecuteTransaction(address, uint256);

    function owners(uint256 varg0) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        require(varg0 < _owners.length);
        return address(_owners[varg0]);
    }

 /*   function 0x19a0() private { 
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
    } */

    function MAX_OWNERS() public nonPayable { 
        return 3;
    }

    function cost() public nonPayable { 
        return _cost;
    }

    function _SafeDiv(uint256 varg0, uint256 varg1) private { 
        require(varg1, Panic(18)); // division by zero
        return varg0 / varg1;
    }

    function _SafeMul(uint256 varg0, uint256 varg1) private { 
        require(!varg0 | (varg1 == varg0 * varg1 / varg0), Panic(17)); // arithmetic overflow or underflow
        return varg0 * varg1;
    }

    function _SafeAdd(uint256 varg0, uint256 varg1) private { 
        require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
        return varg0 + varg1;
    }

    function _SafeSub(uint256 varg0, uint256 varg1) private { 
        require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
        return varg0 - varg1;
    }

    function 0x15d57992(uint256 varg0) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        v0 = _SafeDiv(varg0, 4);
        v1 = _SafeMul(v0, 4);
        _cost = v1;
        v2 = _SafeAdd(_cost, stor_3);
        _cost = v2;
        _exchangeAmount = varg0;
        return _cost;
    }

    function 0x243d(uint256 varg0) private { 
        v0 = v1 = varg0 >> 1;
        if (!(varg0 & 0x1)) {
            v0 = v2 = v1 & 0x7f;
        }
        require((varg0 & 0x1) - (v0 < 32), Panic(34)); // access to incorrectly encoded storage byte array
        return v0;
    }

    function removeOwner(address owner) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        require(uint8(_isOwner[address(address(owner))]), Error('not an owner'));
        require(_owners.length > 1, Error('cannot remove last owner'));
        _isOwner[owner] = 0x0 | bytes31(_isOwner[address(address(owner))]);
        v0 = v1 = 0;
        while (v0 < _owners.length) {
            require(v0 < _owners.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (address(_owners[v0]) - owner) {
                v0 += 1;
            } else {
                v2 = _SafeSub(_owners.length, 1);
                require(v2 < _owners.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(v0 < _owners.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                _owners[v0] = address(_owners[v2]) | bytes12(_owners[v0]);
                require(_owners.length, Panic(49)); // attemp to .pop an empty array
                _owners[_owners.length - 1] = bytes12(_owners[_owners.length - 1]);
                _owners = _owners.length - 1;
            }
        }
        emit OwnerRemoved(owner);
    }

    function revokeConfirmation(uint256 transactionId) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        require(uint8(_isOwner[address(address(msg.sender))]), Error('not owner'));
        require(transactionId < _getTransactionCount.length, Error('tx does not exist'));
        require(transactionId < _getTransactionCount.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(!uint8(_getTransactionCount[transactionId].field3), Error('tx already executed'));
        require(transactionId < _getTransactionCount.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(uint8(_isConfirmed[transactionId][address(address(msg.sender))]), Error('tx not confirmed'));
        v0 = _SafeSub(_getTransactionCount[transactionId].field4, 1);
        _getTransactionCount[transactionId].field4 = v0;
        _isConfirmed[transactionId][msg.sender] = 0x0 | bytes31(_isConfirmed[transactionId][address(address(msg.sender))]);
        emit RevokeConfirmation(msg.sender, transactionId);
    }

    function 0x2919(uint256 varg0, uint256 varg1) private { 
        v0 = 0x243d(STORAGE[varg0]);
        if (STORAGE[varg0] & 0x1 == 0) {
            MEM[varg1] = bytes31(STORAGE[varg0]);
            return varg1 + v0 * bool(v0);
        } else if (STORAGE[varg0] & 0x1 == 1) {
            v1 = v2 = 0;
            while (v1 < v0) {
                MEM[varg1 + v1] = STORAGE[v3];
                v3 = v3 + 1;
                v1 = v1 + 32;
            }
            return varg1 + v0;
        } else {
            return 0;
        }
    }

    function getTransactionCount() public nonPayable { 
        return _getTransactionCount.length;
    }

    function isOwner(address account) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        return bool(_isOwner[account]);
    }

    function getTransaction(uint256 _txIndex) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        v0, v1, v2, v3, v4 = 0xc28(_txIndex);
        v5 = new bytes[](v2.length);
        v6 = v7 = 0;
        while (v6 < v2.length) {
            v5[v6] = v2[v6];
            v6 = v6 + 32;
        }
        v5[v2.length] = 0;
        return address(v4), v3, v5, bool(v1), v0;
    }

    function receive() public payable { 
        emit Deposit(msg.sender, msg.value, this.balance);
    }

    function 0x610539b4(uint256 varg0) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        v0 = _SafeAdd(varg0, 4);
        v1 = _SafeSub(v0, 4);
        _cost = v1;
        v2 = _SafeAdd(_cost, stor_3);
        _cost = v2;
        _exchangeAmount = varg0;
        return _cost;
    }

    function addOwner(address owner) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        require(owner - address(0x0), Error('invalid owner'));
        require(!uint8(_isOwner[address(address(owner))]), Error('owner already exists'));
        require(_owners.length < 3, Error('max owners reached'));
        _isOwner[owner] = 0x1 | bytes31(_isOwner[address(address(owner))]);
        _owners = _owners.length + 1;
        _owners[_owners.length + 1 - 1] = owner | bytes12(_owners[_owners.length + 1 - 1]);
        emit OwnerAdded(owner);
    }

    function isConfirmed(uint256 varg0, address varg1) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 64);
        return bool(_isConfirmed[varg0][varg1]);
    }

    function 0x82539a0d(uint256 varg0) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        v0 = _SafeMul(varg0, 4);
        v1 = _SafeDiv(v0, 4);
        _cost = v1;
        v2 = _SafeAdd(_cost, stor_3);
        _cost = v2;
        _exchangeAmount = varg0;
        return _cost;
    }

    function transactions(uint256 varg0) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        require(varg0 < _getTransactionCount.length);
        v0 = 0x243d(_getTransactionCount[varg0].field2.length);
        v1 = new bytes[](v0);
        v2 = v3 = v1.data;
        v4 = 0x243d(_getTransactionCount[varg0].field2.length);
        if (!v4) {
            v5 = v6 = uint8(_getTransactionCount[varg0].field3);
            v7 = v8 = _getTransactionCount[varg0].field4;
        } else if (31 < v4) {
            v9 = v10 = _getTransactionCount[varg0].field2.data;
            do {
                MEM[v2] = STORAGE[v9];
                v9 += 1;
                v2 += 32;
            } while (v3 + v4 <= v2);
            v5 = v11 = uint8(_getTransactionCount[varg0].field3);
            v7 = v12 = _getTransactionCount[varg0].field4;
        } else {
            MEM[v3] = _getTransactionCount[varg0].field2.length >> 8 << 8;
            v5 = v13 = uint8(_getTransactionCount[varg0].field3);
            v7 = v14 = _getTransactionCount[varg0].field4;
        }
        v15 = new bytes[](v1.length);
        v16 = v17 = 0;
        while (v16 < v1.length) {
            v15[v16] = v1[v16];
            v16 = v16 + 32;
        }
        v15[v1.length] = 0;
        return address(_getTransactionCount[varg0].field0), _getTransactionCount[varg0].field1, v15, bool(v5), v7;
    }

    function getOwners() public nonPayable { 
        v0 = new address[](_owners.length);
        v1 = v2 = v0.data;
        if (_owners.length) {
            v3 = v4 = _owners.data;
            do {
                MEM[v1] = address(STORAGE[v3]);
                v1 += 32;
                v3 += 1;
            } while (v2 + (_owners.length << 5) <= v1);
        }
        v5 = new address[](v0.length);
        v6 = v7 = v5.data;
        v8 = v9 = v0.data;
        v10 = v11 = 0;
        while (v10 < v0.length) {
            MEM[v6] = address(MEM[v8]);
            v6 = v6 + 32;
            v8 = v8 + 32;
            v10 = v10 + 1;
        }
        return v5;
    }

    function confirmTransaction(uint256 transactionId) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        require(uint8(_isOwner[address(address(msg.sender))]), Error('not owner'));
        require(transactionId < _getTransactionCount.length, Error('tx does not exist'));
        require(transactionId < _getTransactionCount.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(!uint8(_getTransactionCount[transactionId].field3), Error('tx already executed'));
        require(!uint8(_isConfirmed[transactionId][address(address(msg.sender))]), Error('tx already confirmed'));
        require(transactionId < _getTransactionCount.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0 = _SafeAdd(_getTransactionCount[transactionId].field4, 1);
        _getTransactionCount[transactionId].field4 = v0;
        _isConfirmed[transactionId][msg.sender] = 0x1 | bytes31(_isConfirmed[transactionId][address(address(msg.sender))]);
        emit ConfirmTransaction(msg.sender, transactionId);
    }

    function submitTransaction(address destination, uint256 value, bytes data) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 96);
        require(data <= uint64.max);
        require(4 + data + 31 < 4 + (msg.data.length - 4));
        require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v0 = new bytes[](data.length);
        require(!((v0 + ((data.length + 31 & ~0x1f) + 32 + 31 & ~0x1f) > uint64.max) | (v0 + ((data.length + 31 & ~0x1f) + 32 + 31 & ~0x1f) < v0)), Panic(65)); // failed memory allocation (too much memory)
        require(data.data + data.length <= 4 + (msg.data.length - 4));
        CALLDATACOPY(v0.data, data.data, data.length);
        v0[data.length] = 0;
        require(uint8(_isOwner[address(address(msg.sender))]), Error('not owner'));
        v1 = new struct(5);
        v1.word0 = destination;
        v1.word1 = value;
        v1.word2 = v0;
        v1.word3 = False;
        v1.word4 = 0;
        _getTransactionCount = _getTransactionCount.length + 1;
        _getTransactionCount[_getTransactionCount.length + 1 - 1].field0 = address(v1.word0) | bytes12(_getTransactionCount[_getTransactionCount.length + 1 - 1].field0);
        _getTransactionCount[_getTransactionCount.length + 1 - 1].field1 = v1.word1;
        v2 = v1.word2;
        require(v2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = 0x243d(_getTransactionCount[_getTransactionCount.length + 1 - 1].field2.length);
        if (v3 > 31) {
            v4 = v5 = _getTransactionCount[_getTransactionCount.length + 1 - 1].field2.data;
            v4 = v6 = v5 + (v2.length + 31 >> 5);
            while (v4 < v5 + (v3 + 31 >> 5)) {
                STORAGE[v4] = STORAGE[v4] & ~0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff | uint256(0);
                v4 = v4 + 1;
            }
        }
        v7 = v8 = 32;
        if (v2.length > 31 == 1) {
            v9 = _getTransactionCount[_getTransactionCount.length + 1 - 1].field2.data;
            v10 = v11 = 0;
            while (v10 < v2.length & ~0x1f) {
                STORAGE[v9] = MEM[v1.word2 + v7];
                v9 = v9 + 1;
                v7 = v7 + 32;
                v10 = v10 + 32;
            }
            if (v2.length & ~0x1f < v2.length) {
                STORAGE[v9] = MEM[v1.word2 + v7] & ~(~0 >> ((v2.length & 0x1f) << 3));
            }
            _getTransactionCount[_getTransactionCount.length + 1 - 1].field2.length = (v2.length << 1) + 1;
        } else {
            v12 = v13 = 0;
            if (v2.length) {
                v12 = MEM[v2.data];
            }
            _getTransactionCount[_getTransactionCount.length + 1 - 1].field2.length = v12 & ~(~0 >> (v2.length << 3)) | v2.length << 1;
        }
        _getTransactionCount[_getTransactionCount.length + 1 - 1].field3 = bool(v1.word3) | bytes31(_getTransactionCount[_getTransactionCount.length + 1 - 1].field3);
        _getTransactionCount[_getTransactionCount.length + 1 - 1].field4 = v1.word4;
        v14 = new bytes[](v0.length);
        v15 = v16 = 0;
        while (v15 < v0.length) {
            v14[v15] = v0[v15];
            v15 = v15 + 32;
        }
        v14[v0.length] = 0;
        emit SubmitTransaction(msg.sender, _getTransactionCount.length, destination, value, v14);
    }

    function numConfirmationsRequired() public nonPayable { 
        return _numConfirmationsRequired;
    }

    function executeTransaction(uint256 transactionId) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        require(uint8(_isOwner[address(address(msg.sender))]), Error('not owner'));
        require(transactionId < _getTransactionCount.length, Error('tx does not exist'));
        require(transactionId < _getTransactionCount.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(!uint8(_getTransactionCount[transactionId].field3), Error('tx already executed'));
        require(transactionId < _getTransactionCount.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(_getTransactionCount[transactionId].field4 >= _numConfirmationsRequired, Error('cannot execute tx'));
        _getTransactionCount[transactionId].field3 = 0x1 | bytes31(_getTransactionCount[transactionId].field3);
        v0 = 0x2919(2 + (5 * transactionId + keccak256(8)), MEM[64]);
        v1, /* uint256 */ v2 = address(_getTransactionCount[transactionId].field0).call(MEM[(MEM[64]) len (v0 - MEM[64])], MEM[(MEM[64]) len 0]).value(_getTransactionCount[transactionId].field1).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v3 = new bytes[](RETURNDATASIZE());
            v2 = v3.data;
            RETURNDATACOPY(v2, 0, RETURNDATASIZE());
        }
        require(v1, Error('tx failed'));
        emit ExecuteTransaction(msg.sender, transactionId);
    }

    function exchangeAmount() public nonPayable { 
        return _exchangeAmount;
    }

    function 0xf6291e43(uint256 varg0) public nonPayable { 
        require(4 + (msg.data.length - 4) - 4 >= 32);
        v0 = _SafeSub(varg0, 4);
        v1 = _SafeAdd(v0, 4);
        _cost = v1;
        v2 = _SafeAdd(_cost, stor_3);
        _cost = v2;
        _exchangeAmount = varg0;
        return _cost;
    }

    function getFlag() public nonPayable { 
        v0 = 0x19a0();
        v1 = new bytes[](v0.length);
        v2 = v3 = 0;
        while (v2 < v0.length) {
            v1[v2] = v0[v2];
            v2 = v2 + 32;
        }
        v1[v0.length] = 0;
        return v1;
    }

    function 0xc28(uint256 varg0) private { 
        require(varg0 < _getTransactionCount.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0 = 5 * varg0 + keccak256(8);
        v1 = 0x243d(_getTransactionCount[varg0].field2.length);
        v2 = new bytes[](v1);
        v3 = v4 = v2.data;
        v5 = 0x243d(_getTransactionCount[varg0].field2.length);
        if (!v5) {
            return _getTransactionCount[varg0].field4, uint8(_getTransactionCount[varg0].field3), v2, _getTransactionCount[varg0].field1, address(_getTransactionCount[varg0].field0);
        } else if (31 < v5) {
            v6 = v7 = _getTransactionCount[varg0].field2.data;
            do {
                MEM[v3] = STORAGE[v6];
                v6 += 1;
                v3 += 32;
            } while (v4 + v5 <= v3);
            return _getTransactionCount[varg0].field4, uint8(_getTransactionCount[varg0].field3), v2, _getTransactionCount[varg0].field1, address(_getTransactionCount[varg0].field0);
        } else {
            MEM[v4] = _getTransactionCount[varg0].field2.length >> 8 << 8;
            return _getTransactionCount[varg0].field4, uint8(_getTransactionCount[varg0].field3), v2, _getTransactionCount[varg0].field1, address(_getTransactionCount[varg0].field0);
        }
    }

    // Note: The function selector is not present in the original solidity code.
    // However, we display it for the sake of completeness.

    function function_selector( function_selector) public payable { 
        MEM[64] = 128;
        if (msg.data.length < 4) {
            require(!msg.data.length);
            receive();
        } else if (0x80f59a65 > function_selector >> 224) {
            if (0x20ea8d86 > function_selector >> 224) {
                if (0x25e7c27 == function_selector >> 224) {
                    owners(uint256);
                } else if (0xb8bb146 == function_selector >> 224) {
                    MAX_OWNERS();
                } else if (0x13faede6 == function_selector >> 224) {
                    cost();
                } else if (0x15d57992 == function_selector >> 224) {
                    0x15d57992();
                } else {
                    require(0x173825d9 == function_selector >> 224);
                    removeOwner(address);
                }
            } else if (0x20ea8d86 == function_selector >> 224) {
                revokeConfirmation(uint256);
            } else if (0x2e7700f0 == function_selector >> 224) {
                getTransactionCount();
            } else if (0x2f54bf6e == function_selector >> 224) {
                isOwner(address);
            } else if (0x33ea3dc8 == function_selector >> 224) {
                getTransaction(uint256);
            } else if (0x610539b4 == function_selector >> 224) {
                0x610539b4();
            } else {
                require(0x7065cb48 == function_selector >> 224);
                addOwner(address);
            }
        } else if (0xc6427474 > function_selector >> 224) {
            if (0x80f59a65 == function_selector >> 224) {
                isConfirmed(uint256,address);
            } else if (0x82539a0d == function_selector >> 224) {
                0x82539a0d();
            } else if (0x9ace38c2 == function_selector >> 224) {
                transactions(uint256);
            } else if (0xa0e67e2b == function_selector >> 224) {
                getOwners();
            } else {
                require(0xc01a8c84 == function_selector >> 224);
                confirmTransaction(uint256);
            }
        } else if (0xc6427474 == function_selector >> 224) {
            submitTransaction(address,uint256,bytes);
        } else if (0xd0549b85 == function_selector >> 224) {
            numConfirmationsRequired();
        } else if (0xee22610b == function_selector >> 224) {
            executeTransaction(uint256);
        } else if (0xf247f02d == function_selector >> 224) {
            exchangeAmount();
        } else if (0xf6291e43 == function_selector >> 224) {
            0xf6291e43();
        } else {
            require(0xf9633930 == function_selector >> 224);
            getFlag();
        }
    }
}