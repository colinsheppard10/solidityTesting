var Greetings = artifacts.require("./Greetings.sol");
var MintableToken = artifacts.require("./Migrations.sol");
// var Greetings = artifacts.require("./xFitTokenCrowdsale.sol");

module.exports = function (deployer) {
    deployer.deploy(Greetings, "hello");
}