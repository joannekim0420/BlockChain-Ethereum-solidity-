pragma solidity ^0.5.0;
contract TestEvent{
    event MyLog(string);
    function MyFunction() public {
        emit MyLog("hello world");
    }
}
