One of the many ways **msg.sender** can be essential is in enforcing **access control** logic on a contract.

At the moment, anyone can call the `setGreeting` function and change the value of the `greeting` state variable to a string argument of their choosing. How can we ensure that we - the deployers of the contract - are the only ones allowed to change the `greeting` variable?

In the previous lesson, we defined the `owner` variable, which will always be equal to us - the deployers of the contract. This means that all we have to do is check whether the `msg.sender` calling the `setGreeting` function is equal to the `owner` address. If so, then everything proceeds as usual. If not, then we should throw an exception, which prevents the rest of the `setGreeting` logic from being executed.

We can use the **require** function to achieve this:

```sol
function myFunction() public {
  require(firstValue == secondValue, "condition not satisfied");
}
```

In the above example, we can see that `require` **takes a condition and an error message as arguments**. If the condition is not met, then an exception will be thrown, and no changes will be persisted on the contract.

## Exercise

- Add a `require` statement on the first line of the body of the `setGreeting` function.
- The `require` statement needs to assert that the `setGreeting` function can only be called by the owner of the contract.
- The `require` statement needs throw the string `caller is not the owner` if its asserted condition is not satisfied.
