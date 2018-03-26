var TuneTokens = artifacts.require("TuneToken");

module.exports = function(deployer) {
  deployer.deploy(TuneTokens, 400000000, "TuneTokens", "TUNE", 18);
};