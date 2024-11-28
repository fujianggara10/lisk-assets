```sol
pragma solidity 0.8.10;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AgorappToken is ERC20 {
	constructor() ERC20("Agorapp Token", "AGORA") {}

	function decimals() public pure override returns (uint8) {
		return 6;
	}
}
```
