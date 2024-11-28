Let's start by going through the basics of the layout of a Solidity file.

All Solidity files require a `pragma` statement to be placed at the very beginning. The pragma statement ensures that the code in the file will use a compatible version of the Solidity compiler.

Since Solidity is an actively developed language, new features are often added or removed with each release. These changes follow the rules of [semantic versioning](https://semver.org/).

```sol
pragma solidity 0.8.0;
```

In the above pragma statement, we are asserting that the code that follows can only be compiled by compiler version 0.8.0. Attempting to compile the same file with any other compiler version will result in an error.

Pragma statements, however, can also allow for some flexibility.
You can use the caret (`^`) symbol to indicate that the code can be compiled with any compiler version that is compatible with the specified version:

```sol
pragma solidity ^0.8.2;
```

In the above snippet, we are asserting that any compiler version between **0.8.2** and the next breaking change - in our case, **0.9.0** - will be able to compile our file.

Lastly, after declaring our compiler version, we can declare our contract. **Contracts** are similar to classes in object-oriented programming. Most of the logic in our codebase will be encapsulated in contracts.

Contract declarations are of the following form:

```sol
contract FirstContract {}
```

## Exercise

As it is tradition to start learning a new programming language with the "Hello World" program, in this course we will create a `Greeter` contract.

- Set the solidity compiler version to be compatible between 0.8.0 and the next breaking change (0.9.0)
- Declare an empty contract and name it `Greeter`
