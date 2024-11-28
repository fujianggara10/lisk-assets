```sol
pragma solidity 0.8.10;

contract Greeter {
  string private greeting;

  function getGreeting() public view returns(string memory _greeting) {
    return greeting;
  }

  function setGreeting(string calldata _greeting) public {
    greeting = _greeting;
  }
}
```
