pragma solidity ^0.5.0;

contract UnderscoreTest{
    string season="";
    modifier setSummerAfter(){
        season = "summer";
        _;
    }
    function setWinter() public setSummerAfter{
        season ="winter";
    }
    modifier setSummerBefore(){
        _;
        season = "summer";
    }
    function setSpring() public setSummerBefore{
        season = "spring";
    }
    function getSeason() view public returns(string memory){
        return season;
    }
}
