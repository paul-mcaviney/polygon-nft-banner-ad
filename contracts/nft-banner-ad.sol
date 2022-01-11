// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract NFTBannerAd is Ownable, ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    event NewNFTMinted(address sender, uint256 tokenId);

    constructor() ERC721("NFTBannerAd", "BA") {
        console.log("This is a WIP NFT Banner Ad contract");
    }

    
}

// will mint an nft to be displayed as a banner on my website
// will emit an event when nft is minted so can update website
//