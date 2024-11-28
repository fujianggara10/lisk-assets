# Introduction to Non-Fungible Tokens (NFTs)

## How Non-Fungible Tokens (NFTs) Work

Non-fungible tokens, or NFTs, are a type of digital asset that represents ownership of a **unique** item or piece of content on the blockchain. Unlike fungible tokens (like ERC-20 tokens), which are interchangeable and have the same value as other tokens of the same type, most NFTs are unique and usually cannot be exchanged one-for-one.

There are multiple standards for NFTs, but the original and most commonly used is called ERC-721. That’s why you might also see the name **ERC-721** tokens as an alias to NFTs.

NFTs are often released in groups of similar meaning — these groups are called **collections**. For example, you might have NFTs representing images of cats by the same author in one collection, and NFTs representing images of dogs by a different author in another collection. One of the well-known collections is called **Bored Ape Yacht Club**, which is a set of generated digital pictures of animated apes wearing different kinds of costumes and props.

Each non-fungible token is an on-chain representation of the following combination:

- **Numeric Token ID**: A simple integer that is unique for each token within a collection.
- **Collection Contract Address**: Just like your wallet address, each collection smart contract can be identified by its unique address on the network.
- **Network**: The blockchain network on which the collection is placed, such as Ethereum or Lisk.

![Picture](/markdown/photo_02.jpg)

For example: An NFT with ID 6477 placed in a collection at address `0xbc4ca0eda7647a8ab7c2061c2e118a18a936f13d` on the Ethereum network contains a link to the above image.

There might be another NFT that links to the same image. But what makes the NFT truly unique is the combination of these three parameters — the token ID, the collection address, and the network.

Having said that, NFTs are not just about images, as they often also represent other types of content and assets...

## NFTs Are Not Just Images - Use Cases

As mentioned in the previous section, an NFT is a type of unique token that might contain a link to some other content.

Other types of digital art that NFTs link to often include videos and **music**. For example, there are NFT marketplaces for music creators where they can trade tokens representing track—pieces from which a song is built. Because of the way NFTs are structured, the track's author could automatically earn royalties from each further sale or play of the song.

Another great example is the **gaming** industry. NFTs can represent game items (e.g., a sword, a playable character, a loot chest, or even land in the game) and their skins. Some online games, such as Decentraland, are built in a way that every playable item is an NFT that could also be used in other games or traded on a decentralized marketplace.

Staying in the digital world, some NFTs might represent **domain names** for websites. Once you register a domain name with one of the NFT-friendly providers, you also receive the right to use this domain name, point it to any website, or trade it in a marketplace without any need for a centralized registrar.

Remember the Uniswap decentralized exchange from our lesson on fungible tokens? Liquidity providers also receive NFTs as a standardized representation of their share of the overall liquidity. So if you provide, let’s say ETH and USDT, in exchange, you receive an NFT that says, "the owner of this NFT is eligible to withdraw this and that amount of ETH and USDT from the liquidity pool." You can keep this NFT in your wallet or gift or sell it to someone else. But remember—whoever holds this NFT, they are allowed to withdraw the amount of liquidity that it represents. And once you withdraw your portion of liquidity from the pool, this NFT is destroyed.

## Accessing NFTs from Your Wallet

So how can you view the NFTs that your address holds? Just like with native and fungible tokens, interacting with NFTs requires a digital wallet. You can choose from different types of wallets.

- **Browser Extensions**: Many browser-based wallets, such as MetaMask, can view your NFTs, transfer them to another account, and perform other operations.
- **Mobile Wallets**: One great use case of NFTs is that an NFT can represent, for example, an event ticket that is easily traceable and tradeable on decentralized exchanges. Once you enter the event venue, you simply open your mobile wallet, and the organizers can scan a QR code that the NFT ticket links to.
- **Hardware Wallets**: You can also store your NFTs on a hardware wallet such as Ledger or Trezor. This is considered the safest option for high-value tokens, as cold storage is often protected by additional security measures such as a PIN code and custom password.

## Transfers and Approvals

Transferring tokens is one of the basic features of any wallet that supports working with NFTs. You select the specific token that you want to transfer, the recipient's address, and hit the send button. But you also need to make sure that you hold a small amount of **native** tokens (e.g., ETH) on the network on which you’re sending your NFTs to cover the **transaction fees**, as mentioned in earlier lessons.

You may also want to give approval to someone else to operate your NFTs. But why would you give them approval instead of just sending them the tokens directly? Approvals are often given not to end users but to smart contracts, e.g., to marketplaces that we’re going to cover in more depth in a future section.

If you decide to sell your NFT for fungible tokens on a marketplace, the whole trade consists of multiple steps that need to happen simultaneously. Approval to the marketplace allows them to pull NFTs from your wallet as the trade is happening, and at the same time, they can also send you the fungible tokens that you exchanged the NFT for.

There are two types of approvals when it comes to NFTs:

1. You can approve someone to operate **one specific** token from one specific collection. You can repeat this type of approval as many times as you want, with different tokens in the same collection as well as in different collections.
2. You can also approve them to operate **all tokens** that you own in a specific collection. This way, you don’t need to keep repeating the one-time approval over and over if you want them to operate multiple tokens.

It’s very important to understand that the approved operator (to whom you gave the approval) can transfer these approved NFTs out of your wallet. So stay careful and give approvals only to people or protocols that you trust.

## Real-World Examples

We’ve already mentioned some examples in the Use Cases section. Let’s take a closer look at the Uniswap NFTs representing liquidity.

In their version 3, the Uniswap protocol introduced concentrated liquidity, meaning you can provide liquidity not just for the whole pool but also to specific price ranges. The smaller the price range you provide liquidity in, the greater the share of the trading fees you can earn.

Once you provide liquidity in a specified range, Uniswap mints an NFT for you that represents this particular liquidity portion. It contains several important pieces of information such as:

- The specific pool where you provided liquidity
- The fungible tokens that you deposited (e.g., ETH and USDC)
- The price range of the liquidity position (e.g., between 2,000 and 3,000 USDC for 1 ETH)

And since NFTs often **link** to images, they also create an image that the NFT links to, displaying a chart of the liquidity position and other useful information.

For example, [here](https://opensea.io/assets/ethereum/0xc36442b4a4522e871399cd717abdd847ab11fe88/1) you can see the very first liquidity position NFT, which was minted by Uniswap founder Hayden Adams. The negative “Tick” values represent the price range—in this case, the lower tick of -50580 represents approximately 0.00636 WETH per 1 UNI token, and the upper tick of -36720 represents approximately 0.02543 WETH per 1 UNI. Whenever the UNI token is being traded between these price points, the owner of the NFT receives a portion of the trading fees.

The link points to OpenSea, one of the earliest and largest NFT **marketplaces**. It displays all NFT collections across multiple chains and all tokens within these collections. Once a current NFT holder decides to sell their NFT, they can do so on OpenSea or other marketplaces.

## NFT Marketplaces

NFT marketplaces are platforms where you can **trade** NFTs. These platforms are similar to e-commerce sites and online auction houses but operate on blockchain technology, ensuring more transparency, security, and decentralization compared to traditional systems.

Some well-known marketplaces include [OpenSea](https://opensea.io/), [Rarible](https://rarible.com/), and [SuperRare](https://superrare.com/). Generally, a marketplace website scans all newly created and existing NFT collections across multiple networks, searching for newly minted tokens. Once they find a new token, they can display its details, such as author address and the image that the NFT links to, on the marketplace website.

Anyone can use a marketplace to list an NFT they own for sale or buy NFTs. When using these marketplaces, you can browse the available NFTs, and once you **connect your wallet**, you can place bids or buy directly.

Since the listing is **tied to a specific marketplace**, some authors might choose to list their NFTs for sale only on one or two of the largest sites, while others might want to list them on as many as possible.

Would you like to try to build your own collection? If so, head to the next IDE course where you can learn to code a simple NFT collection smart contract.
