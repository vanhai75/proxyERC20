require("dotenv").config(); //
async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  console.log("Account balance:", (await deployer.getBalance()).toString());

  //   const ImplementationV1 = await ethers.getContractFactory("ImplementationV1");
  //   const implementationV1 = await ImplementationV1.deploy();
  //   console.log("ImplementationV1 address:", implementationV1.address);

  //set implement v1 to proxy
  // const implementationV1 = ImplementationV1.attach(process.env.PROXY1967);
  // const setImplementation = await implementationV1.upgrade(
  //   process.env.IMPLEMENTATION_V1
  // );
  // console.log("ImplementationV1 address:", implementationV1.address);
  // await setImplementation.wait();
  // console.log("SetImplementation address:", setImplementation.address);

  //deploy SwapHandler
  // const SwapHandler = await ethers.getContractFactory("SwapHandler");
  // // const implementationV1 = ImplementationV1.attach(process.env.PROXY1967);
  // const swapHandler = await SwapHandler.deploy();
  // console.log("SwapHandler address:", swapHandler.address);

  //setSwaphandler
  //   const setSwaphandler = await implementationV1.setswapHandler(
  //     process.env.SWAPHANDER
  //   );
  //   await setSwaphandler.wait();

  // setToken
  //   const setToken = await implementationV1.setToken20Address(
  //     process.env.ADDRESS_ERC20
  //   );
  //   await setToken.wait();

  // setRecipient
  //   const SetRecipient = await implementationV1.SetRecipient(
  //     process.env.RECIPIENT
  //   );
  //   await SetRecipient.wait();

  // setRate
  //   const SetRate = await implementationV1.SetRate(process.env.RATE);
  //   await SetRate.wait();
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
