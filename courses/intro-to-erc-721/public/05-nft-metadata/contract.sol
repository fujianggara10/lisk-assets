pragma solidity 0.8.10;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract AgorappNFT is ERC721 {
    address private _minter;
    uint256 private _currentId;

    // YOUR CODE HERE

    constructor(address minter) ERC721("Agorapp Badge","AGORA") {
        _minter = minter;
    }

    function mintBadge(address account) external {
        require(_minter == msg.sender, "UNAUTHORIZED_MINTER");
        uint256 tokenId = _currentId;
        _currentId += 1;
        _mint(account, tokenId);
    }

    function getCurrentTokenId() external view returns(uint256) {
      return _currentId;
    }

    // YOUR CODE HERE
}
