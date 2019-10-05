pragma solidity ^0.5.11;

import "./safeMath.sol";

contract calc {//complement operation

    uint public a;
    using SafeMath for uint8;
    
    function test() public {
    
        uint8 x = 0;
        uint8 y = 1;
        
        //a= x-y;
        //a=SafeMath.sub(x,y);
        a = x.sub(y); // it throws exception
        
    }

    function test2() public{
        uint8 x = 3;
        uint8 y = 10;
        a = y % -x; //returns 10;
    }
}