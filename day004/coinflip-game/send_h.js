//컨트랙트
module.exports = function(callback) {

    const toAddr = "0x9FB674474931D0cEfed3369536193a1af6157bd3";
    web3.eth.getAccounts().then((accounts) => {
        web3.eth.sendTransaction(
            {from:accounts[2],
               to:toAddr,
               value:web3.utils.toWei("10", "ether")}, callback);
    });
}
