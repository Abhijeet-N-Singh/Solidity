pragma solidity ^0.8.7 ;

contract studentContract {

	struct student{
		string name ;
		uint roll ;
		string subject ;
		bool passOut ;
	}

	mapping ( uint => student ) studentMap ;

	address owner ;

	uint[] studentRolls ;

	constructor () {
		owner =  msg.sender ;  
	}

	modifier onlyOwner () {

		require (owner == msg.sender, "Only Owner Can Do This " ) ;
		_; // go to next line 
	}

	function enrollStudents( uint _roll , string memory _name , string memory _subject) public onlyOwner {

		require (studentMap[_roll].roll != _roll, "Roll Number alredy exits " ) ;

		studentMap[_roll].roll = _roll ;
		studentMap[_roll].name = _name ;
		studentMap[_roll].subject = _subject ;
		studentMap[_roll].passOut =  false ;

		studentRolls.push(_roll) ;
 	}

	function getStudentDetails(uint _roll) view public returns (uint,string memory,string memory,bool)  {

		return (
				studentMap[_roll].roll,
				studentMap[_roll].name,
				studentMap[_roll].subject,
				studentMap[_roll].passOut
				);
	}

	function updateStatus(uint _roll) public onlyOwner {

		studentMap[_roll].passOut = true ;
	}

	function CheckBG(uint _roll) public view  returns(bool) {
		if (studentMap[_roll].passOut)
		return true ;
		else
		return false ;  
 	}

	function getAllRolls() view public returns(uint[] memory) {
		return studentRolls ;
	} 

	function getStudentCount() view public  returns(uint) {
	return studentRolls.length ;
	}
}
