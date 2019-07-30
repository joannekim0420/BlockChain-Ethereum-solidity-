pragma solidity ^0.5.0;

contract MembersMap{
    struct Member{
        uint id;
        string name;
    }
    //bidrectional map
    mapping(address=>Member) memberMap;
    mapping(string=>address) addressByName;
    function addMember(uint _id, string memory _name) public{
        Member memory m = Member(_id, _name);
        memberMap[msg.sender]=m;
        //saving into a bidiretional map to get address by name
        addressByName[_name]=msg.sender;
    }
    function getMemberByName(string memory _name )view public returns(address){
        return addressByName[_name];
    }
    function getMember(address addr) view public returns (uint , string memory){
        Member memory m=memberMap[addr];
        return (m.id, m.name);
    }
}
