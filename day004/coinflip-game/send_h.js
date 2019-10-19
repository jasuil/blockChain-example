//컨트랙트
module.exports = function(callback) {

    const toAddr = "0x260a9C73F32C7D93a0e6221c6f2c3bE9f19ce162";
    web3.eth.getAccounts().then((accounts) => {
        web3.eth.sendTransaction(
            {from:accounts[0],
               to:toAddr,
               value:web3.utils.toWei("10", "ether")}, callback);
    });
}
