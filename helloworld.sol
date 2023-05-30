pragma solidity ^0.8.20;

contract Hello{

    string word = "Hello world" ;

    function setWord(string memory _word) public {
        word = _word ;
    } 

    function getWord() view public returns(string memory){
        return  word ;
    } 

}
