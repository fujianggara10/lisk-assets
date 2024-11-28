###### What is the ERC-20 standard

ERC-20 is one of the earliest (literally the 20th) Ethereum standards. It enables us to build custom tokens on EVM networks - so not only Ethereum but also Polygon, Binance Smart Chain, Arbitrum, and others.

In this course, we're going to take a look at the technical side of how ERC20 tokens work. We'll be exploring some existing implementations - and as a validation of what we've learned, we'll build our own ERC20 token in the last lesson.

***Name and symbol***

As a token author, you might want to chose the token name and symbol. For example one of the well-known stablecoin tokens uses the name "Tether USD" and symbol "USDT".

Many offchain applications (such as Etherscan and all kinds of token trackers) display your token name and symbol as a more user-friendly way of identifying different tokens compared to just displaying their addresses.

***Open Source Implementations***

Since the ERC-20 token is standardized, there are many open source implementations of this standard that you make use of while building your token. You can simply extend their code and build on top of what they have already created, so that you don't need to write the basic features like transfers and balance queries over and over.

In the following lessons, we're going to be using the ERC20 open source implementation made by OpenZeppelin. Let's start by familiarizing with the basics of their code.

Their constructor accepts two arguments - token name and symbol. Let's try it out.

## Exercise

- Change the token name from `Some Token` to `Agorapp Token`
- Change the token symbol from `SoT` to `AGORA`
