require("dotenv").config(); //
async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  console.log("Account balance:", (await deployer.getBalance()).toString());

  // const Implementation = await ethers.getContractFactory("Implementation");
  // const implementation = Implementation.attach(process.env.PROXY1967);
  // const implementation = await Implementation.deploy();
  // console.log("implementation address:", implementation.address);

  //DEPOY PORXY SET IMPLEMENTATION
  // const Proxy = await ethers.getContractFactory("MyProxyBaseContract");
  // const proxy = await Proxy.deploy(process.env.IMPLEMENTATION, "0x");
  // console.log("Proxy address:", proxy.address);

  //SET ADDMIN
  // const setAdmin = await implementation.setAdmin(process.env.ADMIN_ADDRESS);
  // await setAdmin.wait();

  //SET WHITELIST
  // const setWhitelist = await implementation.setWhitelist(process.env.WHITELIST);
  // await setWhitelist.wait();

  //deploy,set AirdropHandler
  // const AirdropHandler = await ethers.getContractFactory("AirdropHandler");
  // const airdropHandler = await AirdropHandler.deploy();
  // console.log("airdropHandler address:", airdropHandler.address);
  // const setAirdrophandler = await implementation.setAirdropHandler(
  //   process.env.AiDROPHANDLER
  // );
  // await setAirdrophandler.wait();

  //deploy,set Token
  // const Token = await ethers.getContractFactory("Token");
  // const token = await Token.deploy(process.env.PROXY1967, "SAME", "SAM");
  // console.log("Token address:", token.address);
  // const setToken = await implementation.setToken20Address(
  //   process.env.ADDRESS_ERC20
  // );
  // await setToken.wait();

  // const Implementation = await ethers.getContractFactory("Implementation");
  // const implementation = await Implementation.deploy();
  // console.log("Implementation address:", implementation.address);

  //AIRDROP
  //   const airdrop = await implementation.Airdrop(
  //     [process.env.RECEIVER_ADDRESS],
  //     20011
  //   );
  //   await airdrop.wait();
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
