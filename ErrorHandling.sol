// SPDX-Licencse-Identifier: MIT
pragma solidity ^0.8.20;
contract ErrorHandling {
    function testRequire(uint _i) public pure{
        //Require should be used to validate conditions such as :
        //- inputs
        //- conditions before execution
        //- return values from calls to other funtions
        require(_i > 10, "Input must be greater then 10");
    }
    function testRevert(uint _i) public pure {
        //Revert is useful when the condition to checck is complex.
        //This code does  the exact same thing as the example 
        if (_i <= 10) {
            revert("INput must be greater than 10");
        }
    }
    uint public num;
    function testAssert() public view {
        // assert should only be used to test for internal errors,
        // and to check iinvariants.

        // Here we assert that num is always equal to 0
        // since it is impossile to update the value of num
        assert(num == 1);
    }
    // custom error
    error InsufficientBlance(uint balance, uint withdrawAmount);
    function testCostomError(uint _withdrawAmount) public view {
        uint bal = 100000;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
}
// SPDX-License_Identifier: MIT
pragma solidity ^0.8.20;
contract ErrorHandling {
    function testRequire(uint _number1, uint _number2) external pure
    {
        require(_number1 >= _number2,"If NUmber is greater than NUmber 2 then revert the transactions to the initial state")
    }
}
