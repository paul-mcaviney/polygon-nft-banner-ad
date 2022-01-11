// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract NFTBannerAd is Ownable, ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    event NewNFTMinted(address sender, uint256 tokenId);    // DO I need token Id if it is the same NFT?

    constructor() ERC721("NFTBannerAd", "BA") {
        console.log("This is a WIP NFT Banner Ad contract");
    }

    
}

// TODO: 1st - make contract to mint the NFT
// TODO: 2nd - make nft upgradeable


// will mint an nft to be displayed as a banner on my website
// will emit an event when nft is minted so can update website
// user must pay a certain amount to have their NFT featured
// <maybe> nft is guaranteed to stay up for at least 3 days

// needs a function to mint the nft
// needs a function to update the ad text for the next nft
// needs a function to withdraw the funds < onlyOwner >
// 