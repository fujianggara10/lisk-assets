```sol
pragma solidity 0.8.10;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";    

contract AgorappNFT is ERC721URIStorage {
    address private _minter;
    uint256 private _currentId;
    
    event CreatedNFT(address indexed to, uint256 indexed tokenId, string tokenURI);

    constructor(address minter) ERC721("Agorapp Badge","AGORA") {
        _minter = minter;
    }

    function mintBadge(address account, string calldata uri) external {
      require(_minter == msg.sender, "UNAUTHORIZED_MINTER");
      uint256 tokenId = _currentId;
      _currentId += 1;
      _mint(account, tokenId);
      _setTokenURI(tokenId, uri);
      emit CreatedNFT(account, _currentId, uri);
    }

    function getCurrentTokenId() external view returns(uint256) {
      return _currentId;
    }
}
```
