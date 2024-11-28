import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract AgorappNFT is ERC721 {
    address private _minter;
    // YOUR CODE HERE

    constructor(address minter) ERC721("Agorapp Badge","AGORA") {
        _minter = minter;
    }
    function mintBadge(address account, uint256 tokenId) external {
        require(_minter == msg.sender, "UNAUTHORIZED_MINTER");
        _mint(account, tokenId);
        // YOUR CODE HERE
    }

    // YOUR CODE HERE
}
