pragma solidity 0.8.10;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract AgorappNFT is ERC721 {
    // YOUR CODE HERE
    constructor() ERC721("Agorapp Badge","AGORA") {
        // YOUR CODE HERE
    }

    function mintBadge(address account, uint256 tokenId) external {
        _mint(account, tokenId);
    }
}
