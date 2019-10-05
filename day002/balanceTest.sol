pragma solidity ^0.5.11;

contract balanceTest {
    mapping(address=> uint256) balances;
    constructor () public {
        balances[0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C] = 10000000000; //sender
    }
    
    function balancesOf(address _takeOwner)  public view returns(uint256 balance) {
        return balances[_takeOwner];
    }
    
    function transfer(address _to, uint256 _tokens) public returns (bool){
        require(_tokens<= balances[msg.sender], "not enough tokens");
        balances[msg.sender] = balances[msg.sender] - _tokens;
        balances[_to] = balances[_to] + _tokens;
        return true;
        
    }
    
}