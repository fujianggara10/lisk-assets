Generally speaking, in Solidity, functions are used to get or set information in response to a function call.

The main exception to the above statement are `pure` functions. A function must be declared as `pure` when it neither reads nor modifies the state.

```sol
function computeSum(uint256 _x, uint256 _y) pure returns(uint256) {
  return _x + _y;
}
```

When a function applies change to the contract storage, then it must be declared without the `view` or `pure` keywords.

```sol
uint256 private favoriteNumber
function setSecretNumber(uint256 _favoriteNumber) public returns(uint256) {
  favoriteNumber = _favoriteNumber;
}
```

Similar to return values, the arguments of a function must also be annotated with their respective types.

Lastly, for some specific types called [**reference types**](https://docs.soliditylang.org/en/v0.8.10/types.html#reference-types), **the data location must always be specified**.

Data location refers to the **location where the value of a variable is stored**. In Solidity, there are three possible data locations: `storage`, `memory`, and `calldata`:

- **storage**: Storage variables are persisted into the blockchain and their values are persisted across transactions. They are allocated in a storage slot in the contract storage
- **memory**: This is a temporary data location. `memory` variables are created and used within a single function call. Once the function call completes, `memory` variables are destroyed.
- **calldata**: This is a special data location that can only be used for function arguments when a contract function is called from outside the contract. As such, it can only be applied to `public` and `external` functions. `calldata` is read-only and cannot be modified by the function.

A `calldata` data location can be specified as in the following example:

```sol
function computeStringLength(string calldata _string_) public returns(uint256) {
  // Access the calldata input argument (a string)
  uint256 stringLength = bytes(_string_).length;
  return stringLength;
}
```

Note that `calldata` can only be used for function parameters and **NOT for their return types**. This is why in the previous lesson we recommended using the `memory` data location to return a string value from a function.

## Exercise

- Declare a public function named `setGreeting`.
- The `setGreeting` function needs to take a string as an argument.
- Use the string value passed as an argument to `setGreeting` to update the value of the `greeting` state variable.
