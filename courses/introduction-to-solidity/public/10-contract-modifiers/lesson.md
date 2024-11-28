What happens if we have many functions that should be called only by the
owner of a contract?

We could certainly repeat what we did in the previous lesson and copy-paste the "require" expression wherever it is needed. However, this approach wouldn't be very [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself). We strive to be good programmers, and one of the fundamental principles is to avoid duplicate code whenever possible.

Enter **modifiers**!

**Modifiers are used to modify the behavior of a function**.

We can use them to encapsulate the logic of repeating `require` expressions within them.

```sol
modifier greaterThanTwo(uint256 _number) {
  require(_number > 2, "number too small");
  _;
}
```

In the above example, the `greaterThanTwo` modifier will always ensure that the `uint256` argument of the functions to which it is applied is greater than 2.

Notice the final `_`! It's called a **merge wildcard**, and it allows to return to the normal flow of the function once the checks inside the modifiers have been successfully performed.

The `greaterThanTwo` modifier can be applied to a function in the following way:

```sol
pragma solidity 0.8.10;

contract FavoriteNumber {
  uint256 public myFavoriteNumber;

  modifier greaterThanTwo(uint256 _number) {
      require(_number > 2, "number too small");
      _;
  }

  function setFavoriteNumber(uint256 _myFavoriteNumber) public greaterThanTwo(_myFavoriteNumber) {
      myFavoriteNumber = _myFavoriteNumber;
  }
}
```

In the above contract, the `setFavoriteNumber` function will throw an exception if the `_myFavoriteNumber` is less than 3 and will run as expected otherwise.

Note that it's not mandatory for modifiers to accept arguments.

## Exercise

- Remove the `require` statement created in the previous lesson.
- Declare a modifier named isOwner.
- Within the body of the modifier, declare a `require` statement that asserts that the caller of a function must be the owner of the contract.
- Apply the modifier to the `setGreeting` function.
