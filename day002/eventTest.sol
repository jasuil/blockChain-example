pragma solidity ^0.5.11;

contract eventTest {
    event transfer(address sender, uint indexed value); //indexed type assign topic
    
    function() external payable { //payable fallback method anytime
        emit transfer(msg.sender, msg.value);
    }
    
    function balance () public view returns (uint){
        return address(this).balance;  //balance is contract variable
    }
}