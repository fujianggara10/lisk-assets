```sol
pragma solidity 0.8.10;

contract Greeter {
  string private greeting;

  event LogGreeting(string updatedGreeting);

  constructor(string memory _greeting) {
    greeting = _greeting;
  }

  function getGreeting() public view returns(string memory _greeting) {
    return greeting;
  }

  function setGreeting(string calldata _greeting) public {
    greeting = _greeting;
    emit LogGreeting(_greeting);
  }
}
```
