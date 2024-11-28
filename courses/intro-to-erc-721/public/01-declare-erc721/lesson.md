###### What is the ERC721 standard

Ethereum tokens are digital assets issued on top of the Ethereum blockchain.

Broadly speaking, they can be divided in two types: fungible or non-fungible.

Fungibility is a property by virtue of which a unit of an asset is interchangeable with other units of the same asset type.

In practice, a $10 bill is fungible because it's equal to any other $10 bill; on the contrary, a work of art cannot be considered interchangeable with any other work of art: assets with unique characteristics such as artworks fall under the category of non-fungible assets.

***NFTs are used to represent non-fungible assets***.

The most widely adopted token standard to encode NFTs on the Ethereum blockchain is the ERC721.

[OpenZeppelin](https://docs.openzeppelin.com/contracts/4.x/) is one of the most used libraries for smart contract development. It includes an implementation of the ERC721 token standard, which we will use in our course.

Similar to artworks, another example of a non-fungible asset is a badge. Badges, like the items that you collect at conferences or when completing a videogame level, are unique in a way that cannot be quite compared with each other.

Throughout our course, we will implement our very own Agorapp Badge.

You can read the EIP-721, which defined the ERC-721 standard, [here](https://eips.ethereum.org/EIPS/eip-721)

## Exercise

- Declare a contract named `AgorappNFT` inheriting the openzeppelin ERC721 contract.
- The name of the ERC721 token is expected to be `Agorapp Badge` and its symbol is expected to be `AGORA`.
- Do not add additional dependencies.
