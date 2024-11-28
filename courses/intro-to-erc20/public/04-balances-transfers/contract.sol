pragma solidity 0.8.10;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AgorappToken is ERC20 {
	address constant VITALIK = 0xd8dA6BF26964aF9D7eEd9e03E53415D37aA96045;
	event VitalikTransfer();

	constructor() ERC20("Agorapp Token", "AGORA") {
		_mint(msg.sender, 100 * 1e6);
	}

	function decimals() public pure override returns (uint8) {
		return 6;
	}

	function _beforeTokenTransfer(address from, address to, uint256 amount) internal override {
		// Your code here

		super._beforeTokenTransfer(from, to, amount);
	}
}
