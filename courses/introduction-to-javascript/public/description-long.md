# Introduction to Blockchain

## What is Blockchain?

![Picture](/markdown/photo_01.jpg)

At its core, a blockchain is a distributed ledger—a type of database that contains transaction records, which are stored across multiple computers around the world. Unlike traditional databases, a blockchain stores data in blocks that are linked (or chained) together. Each block contains a list of transactions, and once a block is completed, it’s added to the chain with an identifier that links it to the previous block.

(Image here)

Here are some key concepts:

- **Decentralization:** Instead of being managed by a single authority (like a central bank), blockchain is maintained by a network of computers, known as nodes, that work together to create, validate, and store transactions in blocks.
- **Immutability:** Once a transaction is recorded on a blockchain, it is virtually impossible to alter or delete it.
- **Transparency:** Every transaction involves a sender and a recipient identified by a public address. While the true identity of these addresses may not be publicly known, anyone can inspect the ledger to see all transactions associated with any address.

There are several different blockchains in existence. Some of the most recognizable names include Bitcoin, Ethereum, Solana, Polygon, and XRP. Each of these serves a unique purpose, which we’ll explore in more detail in the following lessons.

## Blockchain Use Cases

Let’s start with the most obvious use case—cryptocurrencies. The original idea behind Bitcoin, the first-ever blockchain network, was to enable the transfer of value without the need for a central authority. Central authorities—such as banks, credit card companies, or online payment services—can intervene in transactions, pausing them until certain conditions are met, or in extreme cases, censoring them entirely. Blockchain, the technology underlying Bitcoin and other cryptocurrencies, allows for decentralized, permissionless transactions that can be sent from anywhere in the world to anywhere else in a matter of seconds.

Another major use case is **smart contracts**, a concept pioneered by Ethereum, the second most well-known blockchain. Ethereum was designed to allow developers to create decentralized applications (dApps) that run on its blockchain. These applications, known as smart contracts, can range from simple to-do lists to complex financial systems (known as DeFi—Decentralized Finance), custom cryptocurrencies, tokens, online games, and even on-chain art collections.

Blockchain databases are also increasingly used in various industries, including [insurance](https://www.ingwb.com/en/insights/distributed-ledger-technology/blockchain-technology), [payment processing](https://www.paypal.com/us/digital-wallet/manage-money/crypto/pyusd), and supply chain management. Because blockchain makes it nearly impossible to alter transaction records once they’re added to the chain, many companies use it to track the movement of goods from manufacturers to warehouses, and ultimately to the stores where customers purchase them.

But how did we reach this advanced stage? Let’s take a step back and explore the origins of blockchain.

## How It All Started

The concept of decentralized currency has been around for some time. Since the 1990s, a group of cryptography and privacy enthusiasts, known as [cypherpunks](https://en.wikipedia.org/wiki/Cypherpunk), shared their ideas through mailing lists, a precursor to modern online discussion forums.

In 2008, one member of this community, known by the pseudonym **Satoshi Nakamoto**, posted a research paper titled “Bitcoin: A Peer-to-Peer Electronic Cash System.” This paper outlined a new type of digital currency that could be transferred directly between users without the need for a central authority. A few months later, Satoshi put the theory into practice and launched Bitcoin, the first decentralized digital currency.

To this day, the true identity of Satoshi Nakamoto remains a mystery. Is it a single person, a group of people? We don’t know. The name Satoshi Nakamoto is common in Japan, similar to "John Smith" in English-speaking countries. While there are clues suggesting that this person had an advanced knowledge of applied mathematics and the C++ programming language, and may have operated in American time zones, no definitive identity has ever been established. In 2013, Satoshi made their last public post and disappeared from the scene.

Over the years, several individuals have claimed to be Satoshi, but none have provided the cryptographic proof that would convince the community—namely, signing a message with Satoshi's original wallet.

Despite Satoshi’s absence, the Bitcoin network has continued to thrive since its launch in 2009. It is now supported by tens of thousands of nodes, and entire industries worth trillions of dollars have been built on top of Bitcoin.

## Bitcoin: The First Blockchain

The concept behind using Bitcoin is straightforward. You install specialized software that creates a wallet for you and connects to the network. There’s no need to register or provide personal information—you can start sending and receiving payments right away.

Behind the scenes, your wallet consists of a **public address** and a **private key**. To receive a payment, you share your public address with the sender. To send a payment, you use your private key, which functions like a very long, secure password. The private key is so complex that it’s virtually impossible for anyone else to guess it and is usually stored in a secure file.

When you send a transaction, it is broadcasted to the network and distributed among all nodes as a **pending** transaction. These pending transactions are then picked up by Bitcoin **miners**, who use powerful computers to solve complex mathematical equations to create new blocks. As mentioned earlier, each block contains a list of transactions, potentially including yours.

Miners are rewarded for their work in two ways:
1. The Bitcoin network issues new BTC for every block a miner produces.
2. They receive the transaction fees that users pay to send their transactions.

Today, there are many **online providers** that allow you to create a Bitcoin wallet, manage your private keys, and send transactions on your behalf, without the need to run specialized software. Due to legal regulations, these services may require ID verification, but many of them are user-friendly, secure, and reliable. Some of the most well-known providers include [Binance](https://www.binance.com/) and [Coinbase](https://www.coinbase.com/). In 2024, Bitcoin further cemented its place in the financial world as traditional finance companies, like BlackRock, began offering Bitcoin-based products, such as a Bitcoin ETF.

## There Are Many Blockchains

Although Bitcoin was the first blockchain, it is far from the only one. Since its launch, numerous blockchain networks have been developed, each with unique features and use cases.

- **Ethereum:** Ethereum introduced smart contracts, enabling developers to create dApps that run on the Ethereum blockchain. This innovation opened up a world of possibilities, from managing tokens to playing online games and much more.

- **Solana:** Launched a few years after Ethereum, Solana addresses some of Ethereum’s limitations. While Ethereum requires over 10 seconds to produce each block (not ideal for quick transactions like buying coffee), Solana has reduced block production time to just 0.2 seconds.

- **Lisk:** While Solana is highly optimized, it can be challenging for developers to create applications on its platform, limiting its potential user base. Lisk, among other networks, builds on Ethereum’s technology but introduces changes to make its network more accessible to both developers and users. Networks like Lisk are often referred to as “Layer 2 networks” (L2s), with Ethereum serving as the “Layer 1 network.”

Would you like to learn more about these blockchain networks? You're in luck as our next section will be on Ethereum. However, when it comes to learning programing and understanding Ethereum's Solidity language we must need to know the basics of Javascript.

Let's now jump into it by learning the basics of Javascript using an interactive development environment.  
