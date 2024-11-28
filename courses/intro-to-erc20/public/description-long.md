# Introduction to Fungible Tokens

## Understanding Fungible Tokens

Ethereum and Lisk networks use Ether (ETH) as their **native** token. Other networks, such as Binance Smart Chain (BNB) and Tron (TRX), have their own native tokens as well. However, these networks can also support additional tokens, one of which is called a **fungible token**.

Fungible tokens can be created by smart contract developers in a permissionless way, meaning anyone with the necessary knowledge can create and publish their own tokens on Ethereum, Lisk, or other networks. These tokens are often referred to as **ERC-20 tokens** (on Ethereum), **BEP-20** (on Binance Smart Chain), or **TRC-20** (on Tron), depending on the network standard used. Despite the different standards, they all represent fungible tokens.

As the name suggests, these ERC-20 tokens are interchangeable within their collection. This can be compared to actual coins and bills in traditional finance. If someone lends you a 100 dollar bill, you can repay the loan with different bills or even coins - you don't need to repay it with the exact same 100 dollar bill.

Same goes for ERC-20 tokens. One of the well-known examples of fungible tokens is the USDT stablecoin. Using the example from above - if someone lends you 100 USDT, you can return the loan using other USDT tokens, not having to return the exact same 100 USDT tokens that you received.


## Use Cases of Fungible Tokens

As we mentioned, stablecoins have their value pegged to FIAT currencies. Mostly for the US dollar but there are also some stablecoins that represent Euro as well as currencies of smaller nations. Usually, an organization that issues a stablecoin, holds assets with the total value being higher than the total supply of their coin. This way, they can also offer exchange from FIAT currency to the stablecoin and vice versa. Centralized issuers, like Tether - the company behind USDT, usually offer the exchange only to large organizations such as exchanges, and the exchanged amounts are often in hundreds of millions of dollars. But there are also decentralized stablecoin issuers - for example Maker DAO - that enables you to lock your ETH and other tokens and receive their USD-pegged token called DAI without any minimum on the exchange. And you can always exchange your DAI back to ETH or any other token that you used as the collateral.

Even though stablecoins are one of the most visible use cases of fungible tokens, there are also others.

A smart contract generally doesn't have access to offchain data unless someone provides the data to the contract. One of such tools (this kind of tool is called an oracle) used by smart contract developers is Chainlink. Some of their services are free - and some have a cost denominated in their LINK token. Data providers can also earn a portion of the payment for the service that the smart contract developer used their data. Another example of a utility fungible token is Brave browser’s BAT. Users of this browser can opt in to view ads published by Brave’s advertisers and receive BAT token as a reward.

Many ERC20 tokens can also serve as governance tokens. When you own a stock in a traditional company, you might receive some voting power proportional to the amount of stock that you own. This is the same with some decentralized protocols. Uniswap, the largest decentralized exchange, has produced and airdropped UNI tokens to their users. Holders of the UNI token can participate in decision making on the platform, propose new ideas and vote on them. The more tokens they own, the stronger their voting power. And compared to traditional companies, the limit on minimal value of held tokens to cast a vote is usually significantly lower.


## Accessing Fungible Tokens from Your Wallet

Whether you're using a browser extension wallet like **MetaMask** or a hardware wallet such as **Ledger** or **Trezor**, interacting with fungible tokens is straightforward. Most wallets support multiple networks, but it's crucial to ensure your wallet is compatible with the network where your tokens are stored.

When setting up a wallet, it typically displays the network's native token—like ETH on Ethereum or BNB on Binance Smart Chain. However, you may need to add other ERC-20 tokens manually by entering their contract address. In MetaMask, for example, you can click "Import tokens" to recognize new tokens not automatically displayed.

![Picture](/markdown/photo_03.jpg)

## Transfers and Approvals

Transferring tokens is one of the basic features of any wallet. You specify the amount of tokens that you want to transfer, the recipient address, and hit a send button. But you also need to make sure that you hold a small amount of **native** tokens (e.g. ETH) on the network on which you’re sending ERC20 tokens to cover the **transaction fees**.

The transaction fees are almost always paid **by the sender**. There are some advanced concepts such as Account Abstraction where the transaction fee may be paid by a 3rd party or in other ERC20 tokens. Howeverm in the absolute majority of cases the fees are covered by the transaction sender in native token of the network.

How much the fee is depends on multiple factors - the network itself as well as market conditions. On some layer 2 networks such as Lisk, the fees for transferring tokens are usually very low, even less than 1 cent. And it doesn’t matter if you’re transferring tokens worth thousands or millions, the fee does not take the transferred amount into account.

What the fee does take into account, however, is the current demand for sending transactions on the network of your choice. Each network has a limit on how many transactions can fit into the block. And if you want your transaction to be included in a sooner block, you can choose to pay a premium to the block producers so that they prefer including your transaction instead of others. If more users choose to pay the premium fee, the average fee goes up. And if the demand for fast transfers is low, the average fee decreases.

You don’t need to calculate the fee on your own, as your wallet usually suggests 3 or so levels of how fast you want your transaction to be included in a block. So all you need to do is to select your desired fee level and the wallet takes care of the rest. The fee levels in wallets are usually described as:

- **Fast** - The wallet software calculated this fee amount in a way that your transaction is likely to be included in the very next block. Depending on the chain, average block time is usually in seconds - some chains have block time lower than a second, some have around 10 seconds.
- **Normal** - This is the option that many wallets choose as the default. With this fee level, you can expect your transaction to be included in a block within a few minutes.
- **Slow** - Lowest fee. If the demand for sending transactions is high at the moment, it might take tens of minutes or even hours for the transaction to be included in a block.

Apart from transfers, you can also approve some other address to be able to spend your tokens. But why would you do that? Why wouldn’t you simply send them tokens instead? Approvals are often given not to end users but to smart contracts, so that they can pull tokens out of your wallet when needed. For example decentralized exchanges described in the next section.


## Decentralized Exchanges

Let’s say you have 100 USDT tokens and want to use them to buy ETH. You might use a centralized exchange like Binance or Coinbase where you register an account, verify your ID, and can easily trade your tokens.

But what if you want to trade tokens that are not listed on these exchanges? One of the advantages of using decentralized exchanges such as Uniswap (on Ethereum and its L2 networks) and Raydium (popular on Solana) is the virtually unlimited **selection of tokens** to trade that they support. Because of the decentralized nature, anyone can list their token on this exchange and offer it to the public.

Remember the token approvals that we mentioned in the previous chapter? When you want to buy some token (for example ETH) on a decentralized exchange, an integral part of this trade is also selling the other token - e.g. USDT. So both these transfers need to happen at the same time, as part of one atomic transaction. And if any part of the swap fails, the whole operation is reverted and the amounts are returned back. An approval of your USDT - or any other token that you want to sell - allows the exchange to pull your tokens as part of that one multi-transfer swap.

You may choose how much of each token you want the exchange to be able to spend. FSo for example, you can approve them to pull a total of 10 USDT from your wallet. When you initiate a swap, the exchange can transfer tokens from your wallet as part of this swap multiple times, until they reach the combined limit. You can also change the limit or set it to zero any time you wish.

Advanced users of decentralized exchanges can also add tokens that they hold to already existing trading pools. This process is called **providing liquidity**. Centralized exchanges rely on liquidity being provided by the token authors or other partners. Decentralized exchange can also receive liquidity from token authors directly - but on top of that they can accept it from any token holder. And as an incentive for users to provide their tokens, the exchange offers a portion of the collected trading fees if you decide to lock your tokens in the exchange.

## Features Beyond Transfers: Airdrops and Staking

Remember the governance example we mentioned earlier? Uniswap has airdropped newly created UNI tokens to already existing Uniswap users. So what does it mean to airdrop tokens?

One of the ways how protocols increase their usage and loyalty is to **airdrop** their protocol-specific tokens to users. It usually comes with a set of requirements that you need to follow in order to be eligible for the token airdrop. For example, if a decentralized exchange decides to airdrop new tokens, they might want their users to build a history of trading certain amounts before they’re eligible for the reward. Or when an online game platform drops their tokens, you might need to have collected a certain amount of points in the game.

The amount of airdropped tokens varies per protocol. Sometimes the airdropped amount is worth a few dollars per user, sometimes it’s more. The mentioned UNI airdrop from 2020 was actually one of the largest in history where each user received UNI tokens worth over $1,000 at the time - just because they have used the protocol previously when it was still fairly unknown.

Once a protocol has already released their tokens, another common way to increase their user engagement is through **staking** the tokens. Users are given the option to lock their tokens in order to receive a reward - the longer they keep the tokens locked (i.e. staked), the greater reward. Protocols usually use these staked tokens as a way to increase their liquidity pools. Greater liquidity in a pool signifies lower price impacts on trading - so effectively users get their staking rewards for helping achieve a more stable price of the token that they have staked.


## Wrapped Tokens and RWA Tokens

Let’s say you’re interested in taking a loan using a DeFi protocol on Ethereum and would like to provide your BTC as a collateral. While BTC is the native token of the Bitcoin network, it is not available on Ethereum directly. However, there is a fungible token called WBTC that represents BTC on Ethereum - the “W” in this case means “**wrapped**”.

Similarly to stablecoins that we introduced earlier, wrapped token issuers hold the underlying assets on one network (e.g. BTC on Bitcoin) that you can exchange for the wrapped token on another network (e.g. WBTC on Ethereum). This way, the price of the wrapped token is pegged to the underlying asset and you can use it as a collateral in DeFi protocols that are not available on the network of the original asset or any other way you wish.

Going one step further, not only tokens from other networks can be wrapped. In recent years, we’ve also seen the increase of traditional finance assets like stock of a company and gold being represented as ERC-20 tokens. These are called **Real-World Asset** (or RWA) tokens. Some people use RWA tokens as a way to more easily trade on the price of the underlying assets, some use them as collateral to DeFi positions, for some it’s a more effective and transparent way compared to traditional finance.

Would you like to learn how to code your own fungible token? You can do that in the next IDE section by clicking the button below. 

