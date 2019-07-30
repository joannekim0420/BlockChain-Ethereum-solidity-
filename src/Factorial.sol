pragma solidity ^0.5.0;
contract Factorial{
   function fact(uint n) public pure returns (uint) {
        uint total=1;
        uint[] memory num = new uint[](n+1);
        for (uint k = 1; k <= n; k++) {
            num[k] = k;
            total *= num[k];
        }
        return total;
    }
}