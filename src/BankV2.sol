pragma solidity ^0.5.0;

contract BankV2{
    address owner;
    constructor() public{
        owner = msg.sender;
    }
    event Sent(address from, address to, uint amount);
    function sendTo(address payable _receiver, uint amount) public payable{
        require(msg.sender==owner);
        _receiver.transfer(msg.value);    
        emit Sent(msg.sender, _receiver, msg.value);
    }
    function queryBalance() public view returns(uint){
        return address(this).balance;
    }
    function despoit(uint amount) public payable {
        require(msg.value == amount);
    }
    function withdraw() public{
        require(msg.sender == owner);
        msg.sender.transfer(address(this).balance);
    }
}
