pragma solidity ^0.8.7 ;
import "./student.sol" ;

contract employer {

    studentContract s1 = studentContract(0x7EF2e0048f5bAeDe046f6BF797943daF4ED8CB47);
    
    function checkVerifyPassOut(uint _roll) view public returns (string memory) {

        if (s1.CheckBG(_roll)) 
          return "student is Passed Out." ;
             
        else
        return "student did NOT Pass OUT." ;
       
    }
}
