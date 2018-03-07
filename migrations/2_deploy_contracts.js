// var Greetings = artifacts.require("./Greetings.sol");
// var BigNumber = require('bignumber.js');
var Greetings = artifacts.require("./xFitTokenCrowdsale.sol");

module.exports = function (deployer, network, accounts) {
    console.log(`!!!!!!!!! ${accounts[0]}`);
    deployer.deploy(Greetings, 1, 1, 1, 1, 1, accounts[0]);
}