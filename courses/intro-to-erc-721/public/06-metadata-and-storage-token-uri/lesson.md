###### Metadata and in-storage tokenURI

In its implementation of the ERC-721 standard, OpenZeppelin followed a modular design whereby the basic `ERC721` contract that we have been using so far can be easily extended.

The extension that we will add in this final lesson is the `ERC721URIStorage` contract.


Looking at the `ERC721` [contract](https://github.com/agorapp-dao/openzeppelin-contracts/blob/6bd6b76d1156e20e45d1016f355d154141c7e5b9/contracts/token/ERC721/ERC721.sol), we can observe that the tokenUri is not saved in the contract's storage, but [it is calculated every time on-the-fly](https://github.com/agorapp-dao/openzeppelin-contracts/blob/6bd6b76d1156e20e45d1016f355d154141c7e5b9/contracts/token/ERC721/ERC721.sol#L93-L98). \
Since strings in Solidity are expensive, this approach has the advantage that it saves on gas cost.


The `ERC721URIStorage` extension follows a different approach. Its `_setTokenURI` function stores the `_tokenURI` in the contract's storage.

```sol
function _setTokenURI(uint256 tokenId, string memory _tokenURI) internal virtual {
    require(_exists(tokenId), "ERC721URIStorage: URI set of nonexistent token");
    _tokenURIs[tokenId] = _tokenURI;
}
```


Similarly to [the `_owners` mappings](https://github.com/agorapp-dao/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol#L29-L30) in the `ERC721` contract, the `_setTokenURI` function of the `ERC721URIStorage` uses the `uint256 tokenId` unique identifier to keep track of the token uri value of an NFT.

```sol
mapping(uint256 => string) private _tokenURIs;
```

## Exercise

- We have imported the OpenZeppelin `ERC721URIStorage` contract for you. Now it's your time to use it to extend `AgorappNFT` and replace the `ERC721` contract.
- Each new token issued should be associated with a `tokenURI`.
- The token URI should be set when calling the `mintBadge` function.
- Extend the previously created `CreatedNFT` event by adding a third `string` parameter. When firing the event, the string parameter must be the `tokenURI`.
- Do not add additional dependencies.
