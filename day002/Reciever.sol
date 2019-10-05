pragma solidity ^0.5.11;

contract Reciever {
    
    uint256 public v1;
    
    function () external payable{
        //v1 = v1 + msg.value; //this doesn't work because fallback attack
        //it would comsume 2300 over gas
    }
    
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}