require("@nomiclabs/hardhat-ethers");

module.exports = {
  solidity: "0.8.20",
  networks: {
    skale: {
      url: process.env.SKALE_RPC,
      accounts: [process.env.DEPLOYER_PRIVATE_KEY]
    }
  }
};
