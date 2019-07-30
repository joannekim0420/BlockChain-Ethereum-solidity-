pragma solidity ^0.5.0;

contract Fibonacci{
   function fibo(uint n) external pure returns (uint) {
        uint[] memory sequence = new uint[](n+1);
        for (uint i = 0; i <= n; i++) {
        if (i <= 1) {
            sequence[i] = i;
        } else {
            sequence[i] = sequence[i -1] + sequence[i -2];    
        }
    }
    return sequence[n];
   }
}