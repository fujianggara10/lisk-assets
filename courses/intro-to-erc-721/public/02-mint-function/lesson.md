###### Mint an NFT

One of the main building blocks of an NFT contract is its **mint function**.

Minting an NFT is the process by which you publish a non-fungible digital item to the blockchain.
This allows you to tokenize assets by representing them with NFT units, whose ownership and authenticity is validated by the blockchain network where they are deployed.

When you mint an NFT, there are usually two varying parameters:
- **the recipient**, which is the address of the account that is set to receive the newly minted NFT.
- the **NFT ID**, which is a `uint256` integer that is uniquely associated to each newly minted NFT.

This pair of parameter constitutes a mapping that enables to track the ownership of an NFT from the moment it is minted. Here's how it looks in the [OpenZeppelin's ERC721 implementation](https://github.com/agorapp-dao/openzeppelin-contracts/blob/6bd6b76d1156e20e45d1016f355d154141c7e5b9/contracts/token/ERC721/ERC721.sol):

```sol
mapping(uint256 => address) private _owners;
```

When an ERC-721 contract mints an NFT, it updates a `(uint256 => address) mapping` by setting the NFT ID as the `uint256` key [associated to the address of the recipient's account](https://github.com/agorapp-dao/openzeppelin-contracts/blob/6bd6b76d1156e20e45d1016f355d154141c7e5b9/contracts/token/ERC721/ERC721.sol#L287).

Subsequently, each transfer will update the value of the same `(uint256 => address)`, by using the `uint256 tokenId` as a unique identifier and changing its corresponding `address` value to the new owner of the NFT.

And this is the power of the blockchain: out of the box, you're provided with a publicly auditable history of each and every transaction of a non-fungible digital item.

## Exercise

Now it's time to implement a `mint` function in our `AgorappNFT` contract.

- Define an `external` function named `mintBadge`.
- `mintBadge` is expected to mint a new `AGORA` nft with a token id specified by the caller. The address to which the nft is minted is also specified by the caller.
- The expected order of the arguments to the `mintBadge` function is: `mintBadge(uint256, address)`.
- Do not add additional dependencies.
