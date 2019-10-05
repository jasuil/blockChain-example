pragma solidity ^0.5.11;

import "./recieverContract.sol";

contract Sender {
    Reciever reciever;
    constructor (address payable _addr) public payable {
        reciever = Reciever(_addr);
    }
    
    function send() public {
        address(reciever).transfer(1 ether);
    }
    
    function () external payable {}
    
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

