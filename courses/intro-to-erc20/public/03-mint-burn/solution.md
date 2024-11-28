```sol
pragma solidity 0.8.10;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AgorappToken is ERC20 {
	constructor() ERC20("Agorapp Token", "AGORA") {
		_mint(msg.sender, 100 * 1e6);
	}

	function decimals() public pure override returns (uint8) {
		return 6;
	}
}
```
