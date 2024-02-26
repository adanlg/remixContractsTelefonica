// SPDX-License-Identifier: GPL-3.0
        
pragma solidity >=0.4.22 <0.9.0;

import "remix_tests.sol"; 

import "remix_accounts.sol";
import "../newLevels/mathTest.sol";

contract testSuite {
    SafeCounter public safecounter;


    function beforeAll() public {
        safecounter = new SafeCounter("tuValorDeFlagAqui");
    }

    function checkSuccess() public {
        safecounter.increment();
        Assert.equal(safecounter.getCount(), 1, "Debe ser 1");
    }
    
    function checkFailure() public {
        Assert.notEqual(uint(1), uint(1), " should return error");
    }


}