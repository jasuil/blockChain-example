pragma solidity ^0.5.11;

contract modifierTest {
    
    uint256 public startTime;
    uint256 public endTime;
    bool public isOpen;
    uint8 public totalNumOfTokens = 255;
    
    address owner;
    constructor() public {
        owner = msg.sender;
    }
    
    modifier onlyOwner {
        require(msg.sender == owner, "onlt owner cal call this constructor");
        _;
    }
    
    function start() external onlyOwner {
        require(isOpen);
        startTime = now;
        endTime = startTime + 5 * 1 minutes;
        isOpen = true;
    }
    
    function getRemaining() external returns (uint256 remainingTime) {
        if(now <= endTime) {
            remainingTime = (endTime - now) / 1 seconds;
        } else {
          remainingTime = 0;
          isOpen = false;
        }
    }
    
    function saleToken () external {
        if(totalNumOfTokens > 0 && (now < endTime)) {
            assert(totalNumOfTokens > 0);
            totalNumOfTokens--;
        }
    }
}