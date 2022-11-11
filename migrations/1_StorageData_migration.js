// Help Truffle find `TruffleTutorial.sol` in the `/contracts` directory
const StorageData = artifacts.require("StorageData");
const NMT = artifacts.require("NMT");

module.exports = async function(deployer) {
  // Command Truffle to deploy the Smart Contract
  console.log("👷 Deploy Storage contract")
  await deployer.deploy(StorageData);
  const storageData = await StorageData.deployed()
  console.log("🎵 Store poem on blockchain")
  const poemTx = await storageData.store(Buffer.from('Nel mezzo del cammin di nostra vita\nmi ritrovai per una selva oscura,\nché la diritta via era smarrita.'))
  console.log(`transaction hash ${poemTx.tx}`)

  await deployer.deploy(NMT);
};
