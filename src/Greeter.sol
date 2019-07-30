pragma solidity ^0.5.0;

contract Greeter {
    string greeting;

    constructor() public {
        greeting = 'Hello World';
    }

    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }

    function greet() view public returns (string memory) {
        return greeting;
    }
}
