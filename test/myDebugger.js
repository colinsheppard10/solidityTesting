const assert = require('assert');
const ganache = require('ganache-cli');
const Web3 = require('web3');

// can change here to use infura provider
const web3 = new Web3(ganache.provider());

// pull in the compiled contracts
const CompiledxFitTokenCrowdsale = require('../build/contracts/xFitTokenCrowdsale.json');

let accounts;
let xFitTokenCrowdsale;

const myFunction = async () => {
    accounts = await web3.eth.getAccounts();
    console.log(`accounts provided by ganache: ${accounts}`);

    // deploy contract onto network
    xFitTokenCrowdsale = await new web3.eth.Contract(JSON.parse(CompiledxFitTokenCrowdsale.interface))
        .deploy({ data: CompiledxFitTokenCrowdsale.bytecode })
        .send({ from: accounts[0], gas: '1000000' });

    console.log(xFitTokenCrowdsale.options.address);
    assert.ok(xFitTokenCrowdsale.options.address);
}
myFunction();