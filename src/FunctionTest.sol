pragma solidity ^0.5.0;
contract FuntionTest{
    int x=1;
    function incrementX() public returns(int){ 
        x+=1;
        return x;
    }
    function doublex() public{
        X2();
    }
    function getX_() view public returns(int){
        return x;
    }
    function getBalance() view public returns(uint){
        return address(this).balance;
    }
    function deposit() public payable{
        
    }
    function X2() internal {
        x*=2;
    }
}
