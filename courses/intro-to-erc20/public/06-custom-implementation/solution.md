```sol
pragma solidity 0.8.10;

contract AgorappToken {
	event Transfer(address indexed _from, address indexed _to, uint256 _value);
	event Approval(address indexed _owner, address indexed _spender, uint256 _value);

	string public name = "Agorapp Token";
	string public symbol = "AGORA";
	uint8 public decimals = 6;
	uint256 public totalSupply;
	mapping (address => uint256) public balanceOf;
	mapping (address => mapping(address => uint256)) public allowance;

	constructor() {
		_mint(msg.sender, 100 * 1e6);
	}

	function transfer(address _to, uint256 _value) public returns (bool) {
		// decrease balance of the sender
		// automatically throws if their new balance is < 0
		balanceOf[msg.sender] -= _value;

		// increase balance of the recipient
		balanceOf[_to] += _value;

		// don't forget to emit the `Transfer` event and return `true`
		emit Transfer(msg.sender, _to, _value);
		return true;
	}

	function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
		// decrease allowance - from the token owner (1st param) to the spender (2nd param)
		// automatically throws if new allowance is < 0
		allowance[_from][msg.sender] -= _value;
		emit Approval(_from, msg.sender, allowance[_from][msg.sender]);

		// automatically throws if new balance of `_from` is < 0
		balanceOf[_from] -= _value;
		balanceOf[_to] += _value;
		emit Transfer(msg.sender, _to, _value);

		return true;
	}

	function approve(address _spender, uint256 _value) public returns (bool) {
		// stores new approved value: from the token owner (1st param) - to the `_spender` (2nd param)
		allowance[msg.sender][_spender] = _value;
		emit Approval(msg.sender, _spender, _value);
		return true;
	}

	function _mint(address _to, uint256 _value) internal {
		// increase `_to`'s balance
		balanceOf[_to] += _value;
		// increase the total supply
		totalSupply += _value;
		// don't forget to emit the Transfer event during token mint
		emit Transfer(address(0), _to, _value);
	}
}
```
