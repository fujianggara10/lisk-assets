A constructor function is a special type of function that is **executed only once upon the deployment of its contract**.

If you have any experience with object-oriented programming languages, you might already be familiar with this concept.

We can use the constructor function to set the initial value of a contract's state variables at deployment time.

```sol
contract MyFavoriteNumber {
  uint256 public myFavoriteNumber;

  constructor(uint256 _myFavoriteNumber) {
    myFavoriteNumber = _myFavoriteNumber;
  }
}
```

In the example above, the constructor sets the `myFavoriteNumber` variable to be equal to its `_myFavoriteNumber` argument. Therefore, if the `myFavoriteNumber` contract is deployed with 4 as a value, then the initial value of the `myFavoriteNumber` state variable will be 4.

Likewise, if the `MyFavoriteNumber` contract is deployed with 13 as a value, then the initial value of the `myFavoriteNumber` state variable will be 13.

## Exercise

- Add a constructor to our `Greeter` contract.
- The constructor should accept one argument of type string.
- In the body of the constructor, set the value of the public `greeting` state variable to the value of the constructor's string argument.
