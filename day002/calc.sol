pragma solidity ^0.5.11;

contract calc {//complement operation
    function calculator() public pure {
        int8 x = -2**7; //-128
        assert(-x == x); //true
        
        
        uint8 x2 = 2**8-1;
        assert(-x2 == 1);//true
    }
}