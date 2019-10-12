//메타마스크 계정에 이더 보내기
module.exports = function(callback) {

    web3.eth.getAccounts().then((accounts) => {
        web3.eth.sendTransaction(
            {from:accounts[1], to: "0x94f8e7162AE913EB108a127f901aCaBA1f4f744e", value:web3.utils.toWei("10", "ether")}, callback);
    });
}
