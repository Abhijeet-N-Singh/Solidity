// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract MappingExample
{
key1[immutable]:value1[mutable],
key2:value2,
key3:value3
}
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;
    function MappingAddress() external
    {
        //INsert
        balances[msg.sender] = 10000;
        //read
        uint mybal = balances[msg.sender];
        //update
        balances[msg.sender] += 20000;
        //delete
        delete balances[msg.sender];
        // msg.sender is a friend of this conntracrt
        isFriend[msg.sender][address(this)] = true;
    }
    function get(address _addr) external view returns (uint)
    {
        return balances[_addr];
    }
    function remove(address _addr) external
    {
        delete balances[_addr];
    }

}
