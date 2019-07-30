pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2; //in order to return dynamic announced array

contract ArrayTest{
    int[5] mathMarks;
    uint[3][] marks = [[100,80,95],[20,30,40]];
    string[3] cities1=["Seoul","Sydney","Tokyo"];
    string[] cities2 = new string[](2); //only announced not used, dynamic
    string[] cities3;
    function setMathMarks() public{                     //pure not allowed
        mathMarks = [100,60,95,50,80];
    }
    function getMathAbove70() view public returns(int[] memory){
        //compute length of mathAbove70
        uint8 counter=0;
        uint lengthOfMathAbove70=0;
        for(uint8 i=0; i<mathMarks.length; i++)
            if(mathMarks[i]>70) counter++;
        lengthOfMathAbove70=counter;
        //move math marks above 70
        int[] memory mathAbove70=new int[] (lengthOfMathAbove70); //local array
        counter=0;
        for(uint i=0; i<mathMarks.length;i++){
            if(mathMarks[i]>70){
                mathAbove70[counter]=mathMarks[i];
                counter++;
            }
        }
        return mathAbove70;
    }   
    function updateMarks() public returns(uint[3][] memory){
        marks[0][0]=90;
        return marks;
    }
    function setCities() public{
        cities2[0] ="New York";
        cities2.push("Busan");
        cities3.push("Seoul");
        cities3.push("Bejing");
    }
    //dynamic array return needs "pragma experimental ABIEncoderV2;"
    function getCities() view public returns(string[] memory){
        return cities2;
    } 
    function getMarksArr() view public returns(uint[3][] memory) {
        return marks;
    }
    function getMarksLength() view public returns(uint) {
        return marks.length;
    }
    function getArrMemory() pure public returns(uint[] memory) {
        uint[] memory num=new uint[](3);
        for (uint i=0; i<num.length; i++)
            num[i]=i;       //push() not allowed for array memeory
        return num;
    }
    //string is a dynamic array itself, which can not be returned.
    //function setArrMemory() view public returns(string[] memory) {
    function getDynamicArrMemory() view public returns(string[2] memory){
        //arr storage in memory not allowed
        //error: string[2] places = ["9000", "Sydney"];
        string[2] memory places = ["9000", "Sydney"];
        //array memory push not allowed
        //places.push("Seoul");
        places[0]="Seoul";
        return places;
    }
}
