const main = async () => {
    const nftContractFactory = await hre.ethers.getContractFactory("NFTBannerAd");
    const nftContract = await nftContractFactory.deploy();
    await nftContract.deployed();
    console.log("Contract deployed successfully to:", nftContract.address);

    // Call the mint function
    let txn = await nftContract.createNFT();
    await txn. wait();

    // Test minting another NFT
    txn = await nftContract.createNFT();
    await txn.wait();
    
};

const runMain = async () => {
    try {
        await main();
        process.exit(0);
    } catch (error) {
        console.log(error);
        process.exit(1);
    }
};

runMain();