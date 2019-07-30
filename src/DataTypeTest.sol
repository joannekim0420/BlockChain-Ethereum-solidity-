pragma solidity ^0.5.0;
contract DataTypeTest{
    bool isMarried=true;
    int256 x=2;
    bytes1 b1=0xFF;
    bytes23 place23 = "7 hongji-dong jongro-gu";
    bytes8 place8 = "7 hongji";
    bytes place="7 hongji-dong jongro-gu Seoul";
    string constant name="jsl";
    struct Student {
            uint num;
            string name;
            bool isEnrolled; 
    }
    Student s1=Student(201710754,"kimjongeun",true);
    enum gender {male, female}
    function getB1() public view returns(byte) {
        return b1;
    }
    function getB23() public view returns(bytes23) {
        return place23;
    }
    function testInt() public view returns(bool) {
        assert(x==2);
        return true;
    }
    function getStudent() public view returns(uint, string memory, bool){
        return (s1.num, s1.name, s1.isEnrolled);
    }
    function getStudentName() public pure returns(string memory){
        Student memory s2=Student(201911111,"jslim",true);
        return s2.name;
    }
    function _testBytes() public pure returns(uint) {
        //bytes memory b="7 hongji-dong jongro-gu";
        //return place23.length;  //ok
        return b.length;        // returns 23
    }
    function testBytes() public pure returns(uint) {
        bytes memory b="7 hongji-dong jongro-gu";
        //return place23.length;  //ok
        return b.length;        // returns 23
    }
    function testString() public pure returns(uint) {
        string memory nameLocal="kjeLocal";  //should be memory
        //return nameLocal.length;  //error
        return bytes(nameLocal).length;  //casting
    }
    function testArr() public pure returns(uint) {
        uint[3] memory intArr;      // should be memory
        return intArr.length;
    }
}
