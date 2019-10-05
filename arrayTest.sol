pragma solidity ^0.5.11;

contract arrayTest {
    bytes public arr;

    constructor () public {
        arr = "ABC";
    }

    function getElementsByIndex(uint8 _index) public view returns (byte) {
        return arr[_index];
    }

     function getLength() public view returns (uint) {
        return arr.length;
    }

     function changeElement() public {
             arr[0] = "Z";
     }

     function addElement(byte _y) public {
         arr.push(_y);
     }

     function outElement() public {
        if(arr.length > 0) {
            arr.length = arr.length - 1; //cut the last element
        }
     }
     //arr.push();

}