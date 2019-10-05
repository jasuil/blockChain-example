pragma solidity ^0.5.11;

contract referenceType {
    bytes public arr;
    bytes public arr2;

    constructor() public {
        arr = "ABC";
    }

    function copyVal() public {
        arr2 = arr;
    }

    function copyValMemory() public view returns (bytes memory) {
        bytes memory arrRef = arr;
        arrRef[0] = "D";
        return arrRef;
    }

    function changeRefStorage() public {
        bytes storage arrRef = arr;
        arrRef.push("D");
    }

    function changeElement () public {
        arr[0] = "C";
    }
    
}