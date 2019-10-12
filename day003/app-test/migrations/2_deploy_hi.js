//contract name
const hi = artifacts.require("hi");

module.exports = function(deployer) {
  deployer.deploy(hi, "jasuil"); //name, constructor parameters
};
