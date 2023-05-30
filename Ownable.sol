// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Ownable {
    address public owner;

    //Initialize the owner to the account address who deploys this Smart Contract.
    constructor() {
        owner = msg.sender;
    }
    //Restrict the function calls only to the currrent owner.
    modifier onlyOwner() {
        require(msg.sender == owner, "you are not the owner of this smart contract");
        _;
    }
    //This function only can be called by the current owner only.
    function setOwner(address _newOwner) external onlyOwner {
        //New owner cannot be assigned to the Zero address.
        require(_newOwner != address(0), "The new Owner cannot be assigned to a Zero address");
        owner = _newOwner;
    }
}
//0x0x0x0x0x0x0x0x0x0x0x0x0x0x0x0xx
