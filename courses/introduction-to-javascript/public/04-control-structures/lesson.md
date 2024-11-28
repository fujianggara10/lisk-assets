## Control structures

Important part of building an application is often conditioning the behavior of the app. In other words, displaying different outputs - or performing different tasks - based on values of the inputs.

Let's say you have a user with admin priviledges, and you want to enable them to do certain tasks, for example to write new blog articles. But you don't want just anyone to post new articles - only the admin can do that.

We can validate a condition using the `if` statement. `if` the user has admin priviledges, let them post the article. `else` - display an error message.

And if we want to chain the validation, we can combine the conditions with `else if` statement.

In this example, we're validating whether a number is lower or greater than 5. The first part of the conditon `if (number < 5)` executes the block wrapped in braces (`{` and `}`) only if this condition is met (the value of `number` is lower than `5`).

If it is not met (`number` is **not** lower than `5`), the code continues to validate the second condition, in this case `else if (number > 5)`. Again, if this condition is met (`number` is greater than `5`), we execute the subsequent block wrapped in braces (`{` and `}`).

Your task is to extend this set of conditions and add a third one validating whether the `number` **equals** `5`.

## Exercise

- Finish the `buildMessage()` function. If the `number` equals five, return message `Number equals 5`
