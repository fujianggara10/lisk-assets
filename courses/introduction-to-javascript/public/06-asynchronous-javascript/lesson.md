## Asynchronous javascript

Since JS is capable of interacting with other websites, local files, and generally all kinds of external resources, sometimes you need to wait before the resource is processed.

For example when you want to read a text from an external website. Even though it usually takes less than a second, this time is used for establishing connection with the website and downloading the text so that your app can read it. We can make our app **wait** for this text to be availbale, so that we can process it later.

In the following example code, you can see the keyword `await`. It signifies that we're waiting for the file to be fully read and its contents passed back to our application. We have included the native JS module `fs` (filesystem) that contains function `readFileSync()`. This function reads a local file from the same system as the app runs on, and then returns its contents. But because the operation is not instant, we neet to wait for it to be finished.

It's not possible to use the `await` keyword just anywhere we want. We need to use it within an `async` function - this keyword stands for **asynchronous**. An `asnyc` function signals to the JS engine that we're expecting to be waiting for some external resource.

So how can you distinguish when we need to wait for some operation to be finished (in other words when to use the `await` keyword) - and when not? Rule of thumb says that anytime you interact with a resource that is not in your JS code, you need to wait for it to be processed. Whether it's a local file like in this example or a website on the internet.

## Exercise

- Read the contents of the local file `./greeting.text` by passing the file path to the `readFileSync()` function. The [documentation page](https://nodejs.org/api/fs.html#fsreadfilesyncpath-options) might also be helpful.
