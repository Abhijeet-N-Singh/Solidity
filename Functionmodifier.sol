// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract FunctionModifier
{
    bool public functionispaused;
    uint public count;
    modifier whenfunctionisNotPassed()
    {
        require(!functionispaused,"You cannot modify when it is paused");
        _;
    }
    function setPuause(bool _functionispaused) external
    {
        functionispaused = _functionispaused;
    }

    function Increment() external whenfunctionisNotPassed
    {
        count = count + 1;
    }

    function Decrement() external whenfunctionisNotPassed
    {
        count = 0;
    }
    
    modifier check(uint _number1)
    {
        require(_number1 < 10, "Number1 must be less than or equal to 10");
        _;
    }
    function INcrementbyNUmber(uint _number1) external whenfunctionisNotPassed check(_number1)
    {
        count = count + _number1;
    }
}
