Solidity provides several built-in global variables and functions that can be accessed within contracts. Here are some examples:

- `block` - contains information about current block
- `msg` - contains information about the current message call
- `tx` - contains information about the current transaction

See the Solidity documentation for a [full list](https://docs.soliditylang.org/en/v0.8.10/units-and-global-variables.html).

One of the most frequently used global variables is **msg.sender**. It is equal to the address of the account that invoked the current call to a contract's function.

`msg.sender` **makes no distinction between an EOA and a contract account**. In contrast, another global variable called `tx.origin` refers only to the most immediate EOA calling a contract's function.

This has important security implications, as it means that if, for example, an EOA account A calls a contract B, which, in turn, makes an external call to a function on contract C, from C's perspective the `msg.sender` is B, whereas the `tx.origin` value is A - since A is the EOA from which the function call from B to C originated.

## Exercise

- Declare a public state variable of type `address` named `owner`.
- Set the value of the previously declared `owner` state variable to be equal to `msg.sender`. Do it **upon deployment**.
- Add a new value called `setter` to the previously declared `LogGreeting` event. The value must record the address of the account updating the `greeter` state variable.
- The `setter` event parameter must be the second parameter of the `LogGreeting` event, and it must be easily searchable (remember the `indexed` keyword explained in the contract events lesson!).
- Don't remove or modify the previously defined functions.
