// var Greetings = artifacts.require("./Greetings.sol");
var Greetings = artifacts.require("./xFitTokenCrowdsale.sol");

module.exports = function (deployer, network, accounts) {
    deployer.deploy(Greetings, accounts[0], 2, 100, 1, 1, 1);
}

// module.exports = function (deployer, network, accounts) {
//     deployer.deploy(Greetings, "colin deployed");
// }