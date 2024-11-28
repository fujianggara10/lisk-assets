Storing data on the Ethereum blockchain is expensive.

At the same time, smart contracts, like any other software, benefit from well-designed logs that allow listening third-party applications to react to an on-chain event.

The equivalent to logs on the Ethereum blockchain is, in fact, called `event`, and they are much cheaper to use than `storage` data. However, they serve a different purpose.

Possible use-cases include enabling an application front-end to show a notification to the user when some on-chain state changes or monitoring a smart contract for security purposes.

Contract events are defined using the `event` keyword and, similar to functions, can have one or more parameters. However, unlike functions, events don't need to specify a data location when using complex type variables as a parameter. This is because events are not stored in either `memory` or `storage`, as they are meant for off-chain consumption.

You can fire an `event` using the `emit` keyword, as in the following example:

```sol
event Transfer(address from, address to, uint256 value);

function transfer(address to, uint256 value) public returns (bool) {
  // Transfer the specified value to the recipient
  // ...
  emit Transfer(msg.sender, to, value);
  return true;
}
```

The `indexed` keyword can be applied to up to three `event` parameters. An `indexed` parameter can be more easily filtered and searched by listening applications.

```sol
event Transfer(address indexed from, address indexed to, uint256 value);

function transfer(address to, uint256 value) public returns (bool) {
  // Transfer the specified value to the recipient
  // ...
  emit Transfer(msg.sender, to, value);
  return true;
}
```

## Exercise

- Declare an `event` named `LogGreeting` that takes a `string` as an argument.
- Do **_not_** make it indexable.
- Fire the `LogGreeting` event when an account changes the value of the `greeting` variable.
- The `LogGreeting` event should log the new value of the `greeting` variable in a field called `updatedGreeting`.
