###### Balances and transfers

***Balance and Total Supply***

The current balance of any address can be retrieved using the standardized `balanceOf(address)` function. How exactly is the balance stored, is up to the token developer. But in most cases, the optimal solution is to store the balance in a `mapping` where each key represents the token owner and its corresponding value represents their current balance. All values of a mapping are already 0 by default, so you don't need to do any initial set up of the balances.

This is also how this open source implementation stores the token balances.

_OpenZeppelin `ERC20.sol`:_

```
mapping(address account => uint256) private _balances;

function balanceOf(address account) public view virtual returns (uint256) {
	return _balances[account];
}
```

But also, since there's no easy way to retrieve all values of a `mapping` or to sum them up, we need to store the total supply separately. Total supply signifies the sum of all balances combined.

The standard requires that we also return this combined value using the `totalSupply()` function.

_OpenZeppelin `ERC20.sol`:_

```
uint256 private _totalSupply;

function totalSupply() public view virtual returns (uint256) {
	return _totalSupply;
}
```

***Transfer***

We can transfer tokens using the `transfer(address,uint256)` function. The first agument is the token recipient, and the second argument is the amount of tokens we want to transfer.

Note that we don't specify the token sender. That's because the tokens are - by default - sent from whichever address that called this function. We'll cover sending tokens on behalf of someone else in the next lesson.

If the token transfer was successful, the `transfer(address,uint256)` function needs to return `true` and emit an event `Transfer(address,address,uint256)`. Arguments of the event signal the token sender, recipient, and amount. Emitting events if often userful for offchain aplications (think Etherscan and other token trackers) as they can read these events and build their own database of transfers per address, history of transfers, and other types of indexed and searchable data that would be otherwise complicated to retrieve just from the raw blockchain ledger.

When you inspect the OpenZeppelin implementation, you can see that they also call `_beforeTokenTransfer(address,address,uint256)` within their `transfer(address,uint256)` function. This enables you to add custom features such as emit new events or restrict transfers by blacklisted users.

_OpenZeppelin `ERC20.sol`:_

```
function transfer(address to, uint256 amount) public virtual override returns (bool) {
	address owner = _msgSender();
	_transfer(owner, to, amount);
	return true;
}

function _transfer(
	address from,
	address to,
	uint256 amount
) internal virtual {
	require(from != address(0), "ERC20: transfer from the zero address");
	require(to != address(0), "ERC20: transfer to the zero address");

	_beforeTokenTransfer(from, to, amount);

	// ...
}
```

## Exercise

- Override the OpenZeppelin `_beforeTokenTransfer(address,address,uint256)` function. Make it emit a new event `VitalikTransfer` - but only if there's a transfer to or from the Vitalik's address `0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045`.
