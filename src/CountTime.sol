pragma solidity ^0.5.0;
contract Counttime {
    uint256 startTime;
    uint256 endTime;
    function start() public {
        startTime=now;
    }
    function stop() public {
        endTime=now;
    }
    function timePassed() public view returns(uint256) {
        return endTime-startTime;
    }
    function getNow() view public returns(uint) {
        return now;
    }
    uint256 counter = 0;
    function add() public {
        counter++;
    }
    function getCounter() public view returns (uint256) {
        return counter;
    }
}