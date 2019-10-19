//메타마스크 계정
module.exports = function(callback) {

    const toAddr = "0xf7333C6b33a67aDF3640C68033fC6e6650Baf025";
    web3.eth.getAccounts().then((accounts) => {
        web3.eth.sendTransaction(
            {from:accounts[0],
               to:toAddr,
               value:web3.utils.toWei("10", "ether")}, callback);
    });
}
