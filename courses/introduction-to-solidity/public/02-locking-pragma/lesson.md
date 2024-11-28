In the previous lesson, we set the pragma of our contract to a value that supports a range of compiler versions. This is also called a **floating pragma**.

A **floating pragma** is considered dangerous.

When the pragma is not set to a specific compiler version, a contract might be compiled with compiler versions that are either older or newer than the one used during local development and testing. This can lead to inconsistencies or expose the contract to **undiscovered bugs** that may affect a newer compiler version.

As a consequence, locking pragmas to a specific compiler version [is a recommended security practice](https://consensys.github.io/smart-contract-best-practices/development-recommendations/solidity-specific/locking-pragmas/).

## Exercise

- Lock the solidity compiler to version `0.8.10`
