pragma solidity 0.8.10;

contract Greeter {
  string public greeting;
  address public owner;

  event LogGreeting(string updatedGreeting, address setter);

  constructor(string calldata _greeting) {
    greeting = _greeting;
    owner = msg.sender;
  }

  // YOUR CODE HERE

  function getGreeting() public view returns(string memory _greeting) {
    return greeting;
  }

  function setGreeting(string calldata _greeting) public {
    // YOUR CODE HERE
    require(msg.sender == owner, "caller is not the owner");
    greeting = _greeting;
    emit LogGreeting(_greeting, msg.sender);
  }
}
