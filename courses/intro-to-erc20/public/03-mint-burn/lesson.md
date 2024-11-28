###### Mint and burn tokens

The ERC20 standard doesn't specify anything about increasing or decreasing the total supply. But since token authors often need this feature as well, many token smart contracts contain functions that enable increasing and decreasing the total supply as an optional extension to the minimal standard.

OpenZeppelin implementation of `ERC20.sol` defines a function  `_mint(address,uint256)`. As their [guide page](https://docs.openzeppelin.com/contracts/5.x/erc20-supply) states, the first argument holds the address of the newly minted token recipient, and the second argument is the token amount.

The token amount includes decimals. So for example, if your token uses 2 decimals, and you want to mint 5 tokens, the second argument value results in 500.

When you inspect their code, you can see that the `_mint()` function is declared with `internal` visibility modifier. This means that your contract can call it - assuming that your contract derives from their `ERC20.sol`. But because of the `internal` visibility, this function is not available to external callers (e.g. users) directly. If the function were to be called by anyone, it would need to have `external` or `public` visibility.

_OpenZeppelin `ERC20.sol`:_

```
function _mint(address account, uint256 value) internal
```

## Exercise

- Make use of the OpenZeppelin `_mint(address,uint256)` function. Mint 100 full tokens (don't forget the decimals) to the deployer address (`msg.sender` in constructor).
