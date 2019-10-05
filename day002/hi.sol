pragma solidity ^0.5.11;

contract hi {
    
    string public greeting; //state variable, automaking inherit, setter/getter
    
    constructor(string memory _greeting) public { //string type always append memory
        greeting = _greeting;
    }
    
    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }
    
    function say() public view returns(string memory) {
        return greeting;
    }
    
}