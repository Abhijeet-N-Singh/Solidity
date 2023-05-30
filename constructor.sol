// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ConstructorExample
{
    address public MyownerAddress;
    uint public number;
    string public Myname;

    constructor(string memory _Myname,uint _number)
    {
        MyownerAddress = msg.sender;
        Myname = _Myname;
        number = _number;
    }
}
