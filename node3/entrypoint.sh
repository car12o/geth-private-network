#!/bin/sh

geth --datadir /geth/data \
--networkid 8995 --nodekey=/geth/boot.key \
--mine --minerthreads 1 --etherbase=f40d686d1f193e4cefa8028a3332b978ae4e95d4 \
--rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcvhosts "*" --nat "any" --rpcapi eth,web3,personal,net --nousb \
--unlock 0,1,2,3,4,5 --password /geth/password.sec --allow-insecure-unlock \
--bootnodes enode://0002c30213c65ab58eee83561a0b5ea1722802d4916f21eb586770a690827c803ffb55ab96ba9267e660ae207863b9849a696b00a2e0d9740813de8b1a8a226a@geth-node1:30303,enode://5ab39f64982371076198d2b25e3c6340e49fab2805c525042e9dd5784796ea40d355a96bc8e7e4151829c2947edc6ee77ebc4aceed305f0df082c75bf119565c@geth-node2:30303
