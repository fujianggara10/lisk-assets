###### Custom ERC20 implementation

Sometimes, open source might not be sufficient for your use case and you might need to build a custom implementation from scratch.

Here's a minimalistic custom implementation of the ERC20 standard that does everything it's supposed to. It can query the balance of any address, shows total supply, enables a user to give approval to another, ... But wait - the `transfer(address,uint256)` function is not yet implemented.

Here's what the [ERC20 standard](https://eips.ethereum.org/EIPS/eip-20) says about token transfers:

> Transfers `_value` amount of tokens to address `_to`, and MUST fire the `Transfer` event. The function SHOULD `throw` if the message caller’s account balance does not have enough tokens to spend.
> 
> _Note_ Transfers of 0 values MUST be treated as normal transfers and fire the `Transfer` event.
Take a moment and read through the existing code. Function `transferFrom(address,address,uint256)` might be particularly useful for inspiration.

## Exercise

- Implement the custom `transfer(address,uint256)` function so that it complies with the ERC20 standard:
- Decrease the sender balance. Solidity v0.8 automatically `throws` a revert if you're trying to subtract larger number from a smaller one.
- Increase the recipient balance
- Emit the `Transfer` event
- Return `true`
