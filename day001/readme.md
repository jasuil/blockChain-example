# basic start on ubuntu

download geth ([ethereum network application](https://geth.ethereum.org/docs/install-and-build/installing-geth#install-on-ubuntu-via-ppas))
like this
```
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum
```

add account in directory

```
geth --datadir {YOURDIR} account new
```

create genesis block
```
geth --datadir {YOURDIR} init {GENESISFILE_NAME}
```
[genesis file example link](https://github.com/jasuil/blockChain-example/blob/master/day001/docker/genesis.json)

run [private network](https://geth.ethereum.org/docs/interface/private-network) and check blocks on cli mode
```
geth --datadir {YOURDIR} --networkid {YOUR DESIRING PORT NOT IN FROM 1 TO 4, MAIN NET}
```

and [etc](https://geth.ethereum.org/docs/interface/mining)
```
personal.newAccount() //on console mod, create account
eth.accounts //check accounts
miner.start(1) //mining start
```
