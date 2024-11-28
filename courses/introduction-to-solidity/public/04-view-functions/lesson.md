In the previous lesson, we learned how to define state variables on the contract. In this lesson, we will discuss how the outer world can access these variables.

Whenever you declare a **public** state variable, the compiler automatically creates a **getter** function for it. What a getter function does is that it allows an [Ethereum account](https://ethereum.org/en/developers/docs/accounts/) to retrieve the value currently stored in the state variable by calling it as if it were a function.

What if we had declared a **private** state variable? In that case, we would have to create a getter function ourselves!

```sol
uint256 private favoriteNumber;

function getFavoriteNumber() public view returns(uint256) {
  return favoriteNumber;
}
```

As you might have guessed, `getFavoriteNumber` returns the value stored in the private variable `favoriteNumber`, whose value would otherwise be inaccessible outside the scope of its contract.

Let's break down the rest of our function declaration.

Similarly to state variables, **functions are public** if they can be called both from within the contract (or derived contracts) and from other accounts — be it an externally owned account (EOA) or another smart contract.

Following **public**, we have the **view** keyword: it ensures that the function is **read-only** and that no state variables can be modified within its body.

Lastly, since [Solidity is a statically-typed language](https://docs.soliditylang.org/en/v0.8.10/types.html), you must specify the type of the value returned by a function.

Generally speaking, in Solidity, functions are used to get or set information in response to a function call.

If a function reads any state from the contract storage, then it is called a **view function**, and it must be annotated with the **view** keyword.

## Exercise

- Turn the `greeting` state variable to `private`.
- Declare a `public` function named `getGreeting`.
- The `getGreeting` function must be a `view` function that returns the value of the `greeting` variable.

Note: in the case of `string` return values, their data location must be specified. We will explore what the data location of a variable is in the next lesson.

For the purpose of the current exercise, use this syntax:

```sol
returns(string memory _replace_with_it)
```
