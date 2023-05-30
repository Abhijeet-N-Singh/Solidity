// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract FunctionOutputs
{
    //Functions can return multiple outputs.
    function returnManyOutputs() public pure returns(uint, bool)
    {
        return(1,true);
    }
    //outputs can be named
    function nameOutput() public pure returns(uint number,bool Myboolstatus)
    {
        return(1,true);
    }
    // outputs can be assigned to their name.
    // here return ststement can be omiittted.
    function AssignedOutput() public pure returns(uint number, bool Myboolstatus)
    {
        number=1;
        Myboolstatus=true;
    }
    // Use Destructuring assignment when calling another
    // function that returns multiple outputs.
    function DestructuringAssignments()  public pure
    {
        (uint number, bool Myboolstatus) = returnManyOutputs();
        // Outputs can be left out.
        (bool Myanotherboolstatus) = returnManyOutputs();
    }
    function Samplefunction() external view returns(address,bool)
    {
        return (msg.sender,true);
    }
}
