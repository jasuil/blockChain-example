this is my block chain study with Dapp.

lecture
http://bit.ly/2Vv390B

power shell
window key + x + i

docker download
if you use window, download desktop version.


git url
https://github.com/swkim109/kosmo.git


//docker image with dockerFile
docker build -t eth-img .

//docker run
docker run -it --name <컨테이너명> -v ./shared:/root/shared
-p 30303:30303 -p 8545:8545 -p 8546:8546 <이미지명>

geth --networkid 44 --datadir /root/edu --nousb
--rpc --rpcaddr 0.0.0.0
--rpccorsdomain "*"
--ws --wsaddr 0.0.0.0 --wsorigins "*"
--allow-insecure-unlock
