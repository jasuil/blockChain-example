pragma solidity ^0.5.11;

contract ReEntrance {
    
    mapping(address => uint) public balances;
    
    function donate(address _to) public payable {
        balances[_to] += msg.value;
    }
    
    function balanceOf(address _who) public view returns (uint balance){
        return balances[_who];
    }
    
    function withdraw(uint _amount) public { //only my donate
        
        if(balances[msg.sender] >= _amount){
            
            (bool bOk, bytes memory returnData) = msg.sender.call.value(_amount)(abi.encodeWithSelector(""));
            //msg.sender.transfer((_amount); //it's safe!!!!
            //call is method caller
            //(address).call("");
            
            if(!bOk) {
                revert();
            }
            
            balances[msg.sender] -= _amount;
        }
    }
    
    function() external payable {}
    
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}