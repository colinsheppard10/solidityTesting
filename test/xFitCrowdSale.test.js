const assert = require('assert');
const ganache = require('ganache-cli');
const Web3 = require('web3');

// can change here to use infura provider
const web3 = new Web3(ganache.provider());

// pull in the compiled contracts
const CompiledxFitTokenCrowdsale = require('../build/contracts/xFitTokenCrowdsale.json');

let accounts;
let xFitTokenCrowdsale;

// beforeEach will run before each it statement
beforeEach(async () => {
    // retrieve list of accounts from ganache.provider
    accounts = await web3.eth.getAccounts();
    console.log(`accounts provided by ganache: ${accounts}`);

    // deploy contract onto network
    xFitTokenCrowdsale = await new web3.eth.Contract(JSON.parse(CompiledxFitTokenCrowdsale.interface))
        .deploy({ data: CompiledxFitTokenCrowdsale.bytecode })
        .send({ from: accounts[0], gas: '1000000' });
});

describe('xFitTokenCrowdsale yo', () => {

    it('deploys a xFitTokenCrowdsale', () => {
        console.log(xFitTokenCrowdsale.options.address);
        assert.ok(xFitTokenCrowdsale.options.address);
    });

    // it('assigns the manager to the first account', async () => {
    //     const manager = await campaign.methods.manager().call();
    //     assert.equal(accounts[0], manager);
    // });

    // it('allows people to contribute', async () => {
    //     await campaign.methods.contribute().send({
    //         value: 200,
    //         from: accounts[1]
    //     });

    //     const isContributor = await campaign.methods.approvers(accounts[1]).call();
    //     assert(isContributor);
    // });

    // it('allows a manager to make a payment request', async () => {
    //     await campaign.methods.createRequest('new request', 5, accounts[2]).send({
    //         from: accounts[0],
    //         gas: 1000000
    //     });

    //     const createdRequest = await campaign.methods.requests(0).call();

    //     assert.equal('new request', createdRequest.description);
    // });
});