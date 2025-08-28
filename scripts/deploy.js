async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying with account:", deployer.address);

  const Controller = await ethers.getContractFactory("CryptonoutController");
  const controller = await Controller.deploy(
    "0x0278defe215ab05d76d1C209E690Ff5Ea0549576", // Liquidity Bot
    "0x0439CB026Dffb14e3BD1ce4198644aebe99d5C32", // Arbitrage Bot
    "0x48F12573a51E286173d3Ea48ad2335783B6f35ab", // Vault Bot
    "0x310DbC4B5970AF0D56ABa44543EE06200f959d5B"  // Rewards Vault
  );

  await controller.deployed();
  console.log("CryptonoutController deployed to:", controller.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
