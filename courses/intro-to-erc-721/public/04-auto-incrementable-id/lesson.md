###### Auto-incrementable token ID

So far, we have been setting the `tokenId` of our NFTs manually. This is usually not the ideal method to associate unique IDs to NFTs as it is error-prone.

[The EIP-721 design](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md) does not mandate a specifc pattern to update an NFT's `tokenId`. The only strict requirement is that, once associated to an NFT, an identifying `tokenId` value must be unique and immutable for the entire life of the contract.

The most widely adopted pattern to update the contract-scoped `tokenId` state variable is to set its initial value to 0 and then increase it by 1 for each newly minted NFT.

This pattern has become so popular that [OpenZeppelin standardized it in a library called `Counters`](https://github.com/agorapp-dao/openzeppelin-contracts/blob/6bd6b76d1156e20e45d1016f355d154141c7e5b9/contracts/utils/Counters.sol), which is often used with OpenZeppelin erc-721 contracts to manage the token ID.

However, the `Counters` library is basic enough that we can implement a smaller version of it on our own.

## Exercise

So far, our mint function sets as as a token id a value that is passed by the caller as a uint256 function argument.

However, this is not the standard practice.

Usually, the token id is a value that is initially set to 0 and grows in ascending order, increasing by one every time a token is successfully minted.

- Remove the uint256 argument passed to the `mintBadge` function.
- The token id is expected to be a value initially set to 0 which increases by 1 every time a new NFT is issued.
- Define a getter function called `getCurrentTokenId` which returns the current uint256 `tokenId`
- Do not add additional dependencies.
