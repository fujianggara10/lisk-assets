###### Access control

When we talk about access control, we refer to the set of policies enforced in our code that limit the access to specific features in a smart control to only a selected group of entities.

In the world of blockchain development, access control is the most fundamental security concept when developing smart contracts.

The immutable nature of on-chain code makes it so that bugs are extremely daunting to patch. Even in the cases where a [contract is upgradeable](https://docs.openzeppelin.com/upgrades-plugins/1.x/writing-upgradeable), patching a bug is far from an easy task.

One of the most common vulnerability classes is, in fact, misconfigured access control policies.

Not every function should be exposed to all accounts.

As an example, let's have a look at the following basic contract:

```sol
pragma solidity 0.8.10;

contract Bank {
    address public owner;
    address public feeCollector;
    uint256 public bankFee;
    uint256 public collectedFees;
    mapping (address => uint) public balances;

    constructor(address _feeCollector, uint256 _bankFee) {
        owner = msg.sender;
        feeCollector = _feeCollector;
        bankFee = _bankFee;
    }

    function deposit() external payable {
        require(msg.value > bankFee, "Deposit must be greater than bank fee");
        collectedFees += bankFee;
        balances[msg.sender] += msg.value - bankFee;
    }

    function withdraw(uint256 amount) external {
        // Skip if someone tries to withdraw 0 or if they don't have enough Ether to make the withdrawal.
        require(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

    function collectFees() external {
        require(msg.sender == feeCollector || msg.sender == owner, "account not authorized to collect fees");        
        payable(msg.sender).transfer(collectedFees);
        collectedFees = 0;
    }

    function setFeeCollector(address _newFeeCollector) external {
        require(msg.sender == owner, "account not authorized to set fee collector");        
        feeCollector = _newFeeCollector;
    }
}
```

There are two privileged roles:
- `feeCollector`, who can perform one privileged operation
- `owner`, who can perform all privileged operations - including managing the identity of the `feeCollector` account.

As basic as the example is, it still highlights the necessity of different roles and levels of permissions in a smart contract. Learning how to balance the scope of these permissions and roles is, in fact, another important aspect of role-based access control.

Access control can vary from a basic solution, where there is only one privileged entity, to more sophisticated systems with many roles and levels of permissions.

In this lesson we will focus on the most simplistic access-control scenario.

Have a look at the `AgorappNFT` contract. Have you noticed any functionality that should be restricted?

## Exercise

In the last lesson, we implemented a mint function. But be aware! At the moment, everyone can call it - which means that anyone can mint as many Agorapp NFTs as they prefer!

To address the issue, we need to add an access control constraint.

- The `AgorappNFT` contract should accept an argument of type `address` upon deployment.
- Calling `mintBadge` should be restricted to
- Unauthorized calls to the `mintBadge` function should revert with `UNAUTHORIZED_MINTER` as an error message
- Do not add additional dependencies.
