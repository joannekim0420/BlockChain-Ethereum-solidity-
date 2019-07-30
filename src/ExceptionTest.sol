pragma solidity^0.5.0;

contract ExceptionTest{
    address owner;
    constructor() public{
    owner=msg.sender;
    }
    function riaseException() pure public{
        //if(msg.sender != owner){
          //  throw;
        //}
        int x=1;
        int y=0;
        x/y;
    }
}
