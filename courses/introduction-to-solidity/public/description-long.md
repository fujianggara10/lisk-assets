# Introduction to Ethereum

## What is Ethereum

Ethereum is a decentralized blockchain network. Unlike Bitcoin, it allows users to interact with smart contracts—custom applications created by developers worldwide, which can be uploaded to the network without needing permission. Smart contracts play a crucial role in the Ethereum ecosystem, enabling applications ranging from simple calculators to complex financial systems, to-do lists, online games, and digital art collections.

The primary cryptocurrency on the Ethereum network is called Ether (ETH). It can be used to transfer value between addresses, pay transaction fees, and interact with smart contracts. Additionally, Ethereum supports various fungible and non-fungible tokens, expanding its functionality across numerous domains.

## Difference Between Ethereum and Bitcoin

While Ethereum draws some inspiration from Bitcoin, particularly in chaining **blocks** together with each block containing a set of **transactions**, its emphasis on smart contracts sets it apart. Many transactions on Ethereum are not just value transfers; they often represent interactions between users and smart contracts.

Initially, Ethereum relied on miners to produce blocks, similar to Bitcoin. However, in 2022, the Ethereum Foundation—a non-profit organization overseeing the network’s development—transitioned to a more energy-efficient model known as **Proof of Stake (PoS)**. In PoS, validators deposit a certain amount of funds (a "stake") to become eligible to produce new blocks. A randomly selected validator creates a block according to network rules, earning rewards in the form of a base block reward and transaction fees. This change significantly reduced Ethereum's environmental impact.

Unlike Bitcoin’s anonymous creator, Satoshi Nakamoto, one of Ethereum's founders, [Vitalik Buterin](https://en.wikipedia.org/wiki/Vitalik_Buterin), is a publicly known figure. At 19, Vitalik co-authored the Ethereum Yellow Paper, which outlines the network's technical foundations. The Yellow Paper is one of the most cited documents in the blockchain industry, and Vitalik continues to actively contribute to discussions about Ethereum's future.

## Wallets

Ethereum users can choose from several types of wallets to manage their ETH and interact with decentralized applications:

- **Browser Extensions:** Popular options include [MetaMask](https://metamask.io/), Coinbase Wallet, and Brave’s integrated wallet. These are ideal for users who want to quickly send transactions and interact with dApps with just a few clicks.

- **Mobile Wallets:** Examples include [Trust Wallet](https://trustwallet.com/), developed by Binance, one of the largest crypto exchanges. Mobile wallets are convenient for managing crypto on the go and are increasingly useful for in-store payments and at conventions.

- **Hardware Wallets:** Physical devices like [Ledger](https://www.ledger.com/) and [Trezor](https://trezor.io/) are often used for cold storage. They offer enhanced security by requiring multiple steps, such as entering a PIN, before transactions can be sent. Hardware wallets are considered one of the safest storage options for cryptocurrencies.

Many users combine different types of wallets based on their needs. For instance, they might store most of their assets in a secure hardware wallet, use browser wallets for interacting with DeFi (decentralized finance) and other dApps, and keep a small amount in a mobile wallet for everyday transactions.

It’s important to note that wallets do not actually hold cryptocurrency. Instead, they securely store a **private key** that allows the user to sign transactions from their account. The actual balance of tokens is stored on the blockchain, and whoever controls the private key controls the funds. Therefore, it's crucial to back up your wallet, keep the backup safe, and use additional security measures like passwords and PINs.

One of the very basic operations any wallet can perform is sending transactions. You can simply choose the amount to transfer, enter the recipient’s address, and hit the send button. However, it's important to make sure that you have a small reserve of the network’s native tokens (in the case of Ethereum, that’s the ETH token) to cover the transaction fees.

There is a base fee for each transaction. And since each block can only fit a limited amount of transactions, there’s also a market driven multiplier of the fee. When there’s more demand to send transactions fast, the multiplier increases. And when there’s lower demand, the average fee decreases. You don’t need to calculate the fee on your own as your wallet typically offers several options on how quickly you want your transaction to be included in a block.
- **Fast** - Your wallet calculates a fee multiplier that will very likely include your transaction in the very next block.
- **Normal** - It might take several blocks - on Ethereum, that’s tens of seconds to minutes - to have your transaction included in a block.
- **Slow** - Lowest fee. It might take tens of minutes or even hours for the transaction to be processed.


## Fungible and Non-Fungible Tokens

Apart from the **native ETH token**, there are also other types of tokens available on Ethereum: Fungible tokens (also called ERC-20) and non-fungible tokens (a.k.a. ERC-721). Both are important components of the Ethereum ecosystem that enable applications in finance, art, gaming, and other fields.


- **Fungible Tokens (ERC-20):** These tokens are identical and interchangeable, much like traditional currencies. For example, one USDT (a stablecoin pegged to the US dollar) is equivalent to any other USDT. Fungible tokens are commonly used in payments, voting mechanisms, and other standardized functions.

- **Non-Fungible Tokens (ERC-721):** Each NFT is unique and cannot be exchanged one-for-one with another. NFTs often represent ownership of digital or physical assets such as art, music, or in-game items, making them pivotal in various creative and gaming industries.

## Decentralized Applications

Decentralized applications (dApps) are software programs that run on the Ethereum blockchain via smart contracts. These dApps are typically open-source and **transparent**, allowing anyone to audit their code and verify their functionality.

A key characteristic of dApps is their **immutability**. Once deployed, the code of a decentralized application cannot be altered or controlled by any single entity. As a result, the phrase "code is law" is often used by dApp developers.

Interacting with dApps requires sending transactions, which involve fees. On the Ethereum network (Layer 1), these fees can be high, especially during peak usage times. To address this, many users turn to Layer 2 networks.

## Layer 2s

Ethereum’s popularity has led to challenges in efficiently handling a large number of transactions. To mitigate this, developers have introduced Layer 2 networks.

Layer 2 networks are **built on top of Ethereum** to offload some of its usage and reduce transaction costs while maintaining the security and decentralization of the Layer 1 network.

These networks often use **similar technical solutions**, allowing smart contracts and other dApps to run on both Layer 1 and Layer 2 networks. An example of a Layer 2 network built on top of Ethereum is Lisk.

Now that we have a better understanding of Ethereum, let's begin learning the programming language of Solidity. Please go into the interactive development environment to begin!
