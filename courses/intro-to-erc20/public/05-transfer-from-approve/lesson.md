###### Transfers from another address and approvals

In the previous lesson we described how token transfers are made if the token holder calls the `transfer()` function. But what if you want your contract to be able to transfer someone else's tokens than your own?

Great example of this mechanism is a decentralized exchange. While performing a swap (e.g. buying WETH for USDC), the exchange performs two types of transfers:

1. Pulls USDC token from the user's wallet
2. And sends them the exchanged WETH

We already know how the second step works. The exchange simply calls `weth.transfer(userAddress, exchangedAmount)` - and since the caller of the `transfer()` function is the exchange, the tokens are sent from their balance.

But how can they transfer the tokens from the users's wallet?

***Transfer From***.

There's another function similar to the already described regular transfer. And this one is called **Transfer From**.

It accepts 3 arguments instead of the original 2. The new argument in the first position is the sender address.

`transferFrom(address sender, address recipient, uint256 value)`

When you call this function, you can transfer tokens from someone else's wallet (`sender`) to anyone's address (`recipient`) - even to your own.

Using the decentralized exchange example, the exchange contract also performs this call:

```
// transfer usdc from the user to our own address
usdc.transferFrom(userAddress, address(this), amountToBeExchanged);
```

But... This is possible only if the sender has given you (the caller of the function) prior approval to operate their tokens.

***Approval and Allowance***.

Approval for future "transfer from" can be given only by the token holder by calling the `approve(address,uint256)` function on the token contract. The first agument is the spender address who you're allowing to operate your tokens (e.g. the exchange). And the second argument is the spending limit. You don't need to give them full control of all your tokens but you can limit how much they're allowed to spend.

The `approve(address,uint256)` function emits the event `Approval(address,address,uint256)`. The first argument is the approving token owner, the second argument is the approved spender, and the third is the limit how much they are allowed to spend. Same as in previous lesson, this event is useful for offchain applications that can track the approvals and display them in a user-friendly way.

There's also a standardized getter function to retrieve the current approved amount. `allowance(address owner, address spender) returns (uint256)` accepts two arguments - the token owner and the token spender. This way you can also validate if you have given approval to Uniswap or any other decentralized exchange, and how much of the approved amount is still remaining to be spent.

## Exercise

- Override the OpenZeppelin `_approve(address,address,uint256,bool)` function. Make it emit a new event `VitalikApproval` - but only if there's an approval to or from the Vitalik's address `0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045`.
