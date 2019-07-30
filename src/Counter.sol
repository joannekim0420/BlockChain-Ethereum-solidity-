pragma solidity ^0.5.0;
contract Counter {
    uint256 counter = 1;
    function add() public {
        counter++;
    }
    function subtract() public {
        counter--;
    }
    function getCounter() public view returns (uint256) {
        return counter;
    }
}