When you want to save persistent data on your contract, you need to use state variables - values that are permanently stored on the Ethereum blockchain through your contract.

State variables can be of various types, such as **uint, bytes, address, bool, string**. For a full list [visit this link](https://docs.soliditylang.org/en/v0.8.10/types.html).

Here is an example of how to define a state variable on the contract:

```sol
contract Greeter {
  uint256 public myFavoriteNumber;
}
```

## Accounts

Entities that can interact with a smart contract are called **accounts**. In Ethereum network, there are two types:

- **an externally owned account (EOA)**: Generally considered a user's account, an EOA is controlled by a person with an Ethereum wallet.
- **a contract account**: This is an address where a smart contract resides.

Both EOAs and contract accounts can interact with your contract. It's important to note, though, that a transaction can only be initiated by an EOA.

## Visibility

Not everyone can access a state variable. State variables can have different levels of **visibility**, which specify who can interact with them.

### Public

A public state variable can be accessed by anyone, both from within the contract and from outside of it:

```sol
uint256 public myFavoriteNumber;
```

### Private

A private state variable can only be accessed from within the contract where it's defined:

```sol
uint256 private mySecretNumber;
```

### Internal

An internal state variable cannot be accessed from outside the contract. However, it can be accessed from **child contracts**.

Solidity is an object-oriented programming language and supports inheritance. A child contract is a contract that inherits from another contract:

```sol
contract ParentContract {
  uint256 internal myInternalNumber;
}

contract ChildContract is ParentContract {

  // ChildContract can access myInternalNumber

}
```

## Exercise

- Declare a state variable named `greeting` of type string.
- Make sure that any account will be able to query it!
