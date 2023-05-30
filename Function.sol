//SPDX-License-Indentifier: MIT
pragma solidity ^0.8.20;
contract Functions
{
    function add(uint num1,uint num2) external pure returns (uint)
    {
        return num1+num2;
    }
    function subs(uint num1,uint num2) external pure returns (uint)
    {
        return num1-num2;
    }
    function mul(uint num1,uint num2) external pure returns (uint)
    {
        return num1*num2;
    }
    function div(uint num1,uint num2) external pure returns (uint)
    {
        return num1/num2;
    }
    function mod(uint num1,uint num2) external pure returns (uint)
    {
        return num1%num2;
    }
}
