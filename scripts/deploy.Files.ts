import { ethers } from "hardhat";

async function main() {
  const Files = await ethers.getContractFactory("Files");
  const file = await Files.deploy();

  await file.deployed();
  console.log("SendFile deployed to:", file.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
