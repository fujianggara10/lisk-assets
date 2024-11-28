```sol
pragma solidity 0.8.10;

contract Greeter {
  string private greeting;
  address public owner;

  event LogGreeting(string updatedGreeting, address setter);

  constructor(string memory _greeting) {
    greeting = _greeting;
    owner = msg.sender;
  }

  function getGreeting() public view returns(string memory _greeting) {
    return greeting;
  }

  function setGreeting(string calldata _greeting) public {
    greeting = _greeting;
    emit LogGreeting(_greeting, msg.sender);
  }
}
```
