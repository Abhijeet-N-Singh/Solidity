//SPDX-license-identifier: MIT
contract LocalVariables
{
    uint public firstvariable;
    bool public secondvariable;
    address public myAddress;

    function localvariables() external
    {
        uint Mynumber=123;
        bool Myboolean=false;

        Mynumber=Mynumber+123;
        Myboolean=true;

        firstvariable=123;
        secondvariable=true;
        myAddress=address(1);
    }
}
