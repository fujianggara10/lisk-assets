###### Metadata and in-storage tokenURI

NFT metadata is a set of rich annotations that describes an NFT.

Commonly, the metadata schema includes a URI that points to an image. As most NFTs nowadays represent a digital artwork, the metadata's URI image points to the asset that the NFT is tokenizing.

In order to improve the interoperability between on-chain NFT components and off-chain components - such as marketplaces-, the metadata schema has eventually converged into a consolidated standard: the `ERC721 Metadata JSON Schema`.

```javascript
{
    "title": "Asset Metadata",
    "type": "object",
    "properties": {
        "name": {
            "type": "string",
            "description": "Identifies the asset to which this NFT represents"
        },
        "description": {
            "type": "string",
            "description": "Describes the asset to which this NFT represents"
        },
        "image": {
            "type": "string",
            "description": "A URI pointing to a resource with mime type image/* representing the asset to which this NFT represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive."
        }
    }
}
```


The `ERC721 Metadata JSON Schema` standard is also describeded [in the official eip-721](https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md).


An example of the `ERC721 Metadata JSON Schema` is the following metadata:
```javascript
{
  "name": "Agorapp Badge",
  "description": "Enrich your on-chain resume by collecting skill badges which document your accomplishments!", 
  "image": "https://agorapp.dev/favicon.io", 
}
```

You may have noticed that NFT metadata is a fairly large entity, if compared to the variables we usually deal with in an on-chain context.

Storage is an expensive commodity in the Ethereum network, which is the reason why most NFTs store their metadata off-chain.

In order to avoid using centralized off-chain storage services such as s3 buckets, the industry has largely adopted peer-to-peer platforms for its storage needs.

Some of the most prominent decentralized storage solutions are:
- Ethereum Swarm
- IPFS and Filecoin
- Arweave

With the exception of IPFS - which is a peer-to-peer network-, the rest of the platforms are full-blown blockchains optimized for storage as a primary use-case. They allow for strong censorship-resistance, immutability and decentralization guarantees.

The `ERC721 Metadata JSON Schema` standard is widely supported by the industry, including by OpenSea - the largest NFT markeplace. Another specification that OpenSea expects, similarly to most other DApps and APIs, is `tokenURI` method.

The `tokenURI` method is a pointer to the off-chain location of the NFT metadata. Marketplaces like OpenSea use it to pull the data associated to an NFT and display it.

In the `ERC721` OpenZeppelin contract, [the `tokenURI` function](https://github.com/agorapp-dao/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol#L90-L98) builds a URI pointer dynamically by concatenating a [`_baseURI()`](https://github.com/agorapp-dao/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol#L100-L107) and a `tokenId`.
```solidity
/**
 * @dev See {IERC721Metadata-tokenURI}.
 */
function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
    _requireMinted(tokenId);
    string memory baseURI = _baseURI();
    return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenId.toString())) : "";
}
/**
 * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
 * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
 * by default, can be overridden in child contracts.
 */
function _baseURI() internal view virtual returns (string memory) {
    return "";
}
```

The output of `_baseURI()` is string that is supposed to be the common prefix of all URIs, wherease the `tokenId` provides a unique identifier to differentiate the generate URIs.

## Exercise

- Make the `_baseURI()` return "https://alice_in_wonderland/".
- Declare an event called `CreatedNFT` which takes two `indexed` arguments: `address` and `tokenId`.
- Fire the `CreatedNFT` event at the end of the minting function. The parameters that it needs to log are the recipient of the minted NFT and the token id of the minted NFT.
- Do not add additional dependencies.
