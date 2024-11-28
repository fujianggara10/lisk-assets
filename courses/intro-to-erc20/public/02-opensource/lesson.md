###### Open source implementations

The [ERC20 standard](https://eips.ethereum.org/EIPS/eip-20) defines several functions - `name()`, `symbol()`, `decimals()`, `balanceOf(uint256)`, `totalSupply()`, `transfer(address,uint256)` `approve(address,uint256)`, `allowance(address,address)`, and `transferFrom(address,address,uint256)` - as well as events `Transfer(address,address,uint256)` and `Approval(address,address,uint256)`.

All of these are already implemented in the imported OpenZeppelin `ERC20.sol` contract and its dependencies. That's why you don't see them in this code.

***Decimals***

EVM nodes run on all kinds of computers which use different types of processors. One of the challenges of multi-platform systems that remains unsolved to this day is working with decimal numbers.

Simple math division 1/3 might return a result with:

* precission to 16 decimals rounded down on one type of processor
* but also - precission to 17 decimals rounded up on another type of processor

To mitigate rounding errors, EVM and Solidity doesn't use decimal types at all. There is no `float`, `double` or any other decimal type that you might know from other programming languages. Instead, we store decimal numbers as an `integer` (and often as an `unsigned integer`) with the predetermined number of decimals.

_(For advanced level developers: Yes, there is an exeption from this rule. In some cases, you might encounter decimal numbers in Solidity before compilation to bytecode - but they are all transformed into integers during compilation (e.g. `0.5 * 2` transforms to `1`). If this transformation is unsuccessful (e.g. in case of `0.4 * 2`), the compilation fails.)_

Let's say you define that all your numbers are going to use **2 decimals**.

If you want to store the number "one", you simply store it as `100`.

"One and half" then becomes `150`.

With predetermined **3 decimals**, "one" becomes `1000`.

And with **18 decimals**, "one" is stored as `1000000000000000000` (one and 18 zeros). Which makes "half" stored as `500000000000000000` (five and 17 zeros).

The predetermined amount of decimals that your token uses is returned from the `decimals()` function with the type of `uint8`. `uint8` stands for "unsigned integer with the length of 8 bits", which means its max decimal value is 255. But the usual and most common decimal amount you'll see is 18, possibly because the native token of Ethereum, ETH, also uses 18 decimals.

## Exercise

- Override the `decimals()` function (from `ERC20.sol`) in your own contract to change the number of decimals to 6.
