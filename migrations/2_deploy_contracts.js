var TuneToken = artifacts.require("TuneToken");

module.exports = function(deployer) {
  deployer.deploy(TuneToken, 400000000, "TUNE Token", "TUNE", 8);
};