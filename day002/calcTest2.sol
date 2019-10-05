pragma solidity ^0.5.11;

contract calc {//complement operation

    bytes8 public v;

    constructor() public {
        v = "abc";
    }

    function getElementByIndex(uint8 _index) public view returns (byte) {
        return v[_index];
    }

    function getLength() public view returns (uint) {
        return v.length;
    }

    /* compile error
     function changeElement() public view returns (byte) {
             v[1] = "d";
     }
    */

}