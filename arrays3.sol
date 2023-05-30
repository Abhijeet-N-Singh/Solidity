// Solidity program demonstration
// creating an dynamic array
 
 // SPDX-License-Identifier: MIT

 pragma solidity ^0.8.20;
 // creating a contract
 contract DynamicSizeArray {
     //Declaring state variable
     //of type array. one is fixed size
     // and the other one is dynamic array.
     uint[] data
       = [10, 20, 30, 40, 50];
     int[] data1;

     // defining function to
     // assign values to dynamic array
     function dynamic_array()public returns(
         uint[] memory, int[] memory){
             data1
             = [int(-60), 70, -80, 90, -100, -120, 140];
             return (data, data1);
         }

 }
