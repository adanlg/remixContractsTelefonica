// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract DynamicNFT is ERC721, Ownable, ReentrancyGuard {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    // Base URI
    string baseURI;

    // Timestamp of the contract deployment
    uint256 public immutable deploymentTimestamp;

    // Mapping from token ID to its creation timestamp
    mapping(uint256 => uint256) private _tokenCreationTimestamps;

    // Commission details
    address payable public commissionRecipient;
    uint256 public commissionAmount = 0.01 ether; // Example fixed commission amount

    constructor(string memory _initBaseURI, address payable _commissionRecipient) ERC721("DynamicNFT", "DYN") {
        baseURI = _initBaseURI;
        deploymentTimestamp = block.timestamp;
        commissionRecipient = _commissionRecipient;
    }

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
        _tokenCreationTimestamps[tokenId] = block.timestamp;
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return baseURI;
    }

    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(ownerOf(tokenId) != address(0), "ERC721Metadata: URI query for nonexistent token");

        uint256 twentyDays = 20 days;
        uint256 oneYear = 365 days;

        uint256 timeSinceCreation = block.timestamp - _tokenCreationTimestamps[tokenId];

        if (timeSinceCreation < twentyDays) {
            return string(abi.encodePacked(_baseURI(), "initial_image.json"));
        } else if (timeSinceCreation < oneYear) {
            return string(abi.encodePacked(_baseURI(), "20_days_image.json"));
        } else {
            return string(abi.encodePacked(_baseURI(), "1_year_image.json"));
        }
    }

    // Override the _transfer function to include commission logic
    function _transfer(address from, address to, uint256 tokenId) internal virtual override nonReentrant {
        super._transfer(from, to, tokenId); // Call the original transfer function

        // Implement commission logic
        // For simplicity, we're just transferring Ether as a commission.
        // Ensure your contract can receive and store Ether if you're using this method.
        // You may want to implement additional logic based on your commission strategy.
        require(msg.value >= commissionAmount, "Insufficient amount for commission");
        (bool sent, ) = commissionRecipient.call{value: commissionAmount}("");
        require(sent, "Failed to send commission");
    }

    // Override function to allow contract to receive Ether
    receive() external payable {}
}
