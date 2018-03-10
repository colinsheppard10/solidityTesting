var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "loyal enrich regular recall peanut reject resist ostrich kiwi village hello caught";

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // to customize your Truffle configuration!
  networks: {
    ganache: {
      host: "localhost",
      port: 7545,
      network_id: "*"
    },
    infura: {
      provider: function () {
        return new HDWalletProvider(mnemonic, "https://rinkeby.infura.io/ECK10Aj0GLMbSjClhpcV")
      },
      network_id: 3
    }
  }
};
