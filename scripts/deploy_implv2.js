require("dotenv").config(); //
async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  console.log("Account balance:", (await deployer.getBalance()).toString());
  //Deploy ImplementV2
  //   const ImplementationV2 = await ethers.getContractFactory("ImplementationV2");
  //   const implementationV2 = await ImplementationV2.deploy();
  //   console.log("ImplementationV2 address:", implementationV2.address);

  //set implementionV2 to proxy
  //   const ImplementationV2 = await ethers.getContractFactory(
  //     "MyProxyBaseContract"
  //   );
  //   const implementationV2 = ImplementationV2.attach(process.env.PROXY1967);
  //   const setImplementationV2 = await implementationV2.upgrade(
  //     process.env.IMPLEMENTATION_V2
  //   );
  //   await setImplementation.wait();

  //deploysignatureUtil
  //   const SignatureUtils = await ethers.getContractFactory("SignatureUtils");
  //   const signatureUtils = await SignatureUtils.deploy();
  //   console.log("SignatureUtils address:", signatureUtils.address);

  //SetsignatureUtilsAddress
  //   const ImplementationV2 = await ethers.getContractFactory("ImplementationV2");
  //   const implementationV2 = ImplementationV2.attach(process.env.PROXY1967);
  //   const SetsignatureUtils = await implementationV2.SetsignatureUtilsAddress(
  //     process.env.SIGNATURE_ADDRESS
  //   );
  //   await SetsignatureUtils.wait();

  //Set SetSigner
  //   const ImplementationV2 = await ethers.getContractFactory("ImplementationV2");
  //   const implementationV2 = ImplementationV2.attach(process.env.PROXY1967);
  //   const SetSigner = await implementationV2.SetSigner(process.env.MYADDRESS);
  //   await SetSigner.wait();
  // }
  //deploysignatureUtil
  // const SwapHandler = await ethers.getContractFactory("SwapHandler");
  // const swapHandler = await SwapHandler.deploy();
  // console.log("SignatureUtils address:", swapHandler.address);


  // const ImplementationV2 = await ethers.getContractFactory("ImplementationV2");
  // const implementationV2 = ImplementationV2.attach(process.env.PROXY1967);
  // const SetSigner = await implementationV2.depositAndSwap(
  //   [process.env.SS],
  //   [process.env.SIGNATURE]
  // );
  await SetSigner.wait();
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
