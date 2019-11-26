#!/bin/sh

geth --datadir /geth/data \
--networkid 8995 --nodekey=/geth/boot.key \
--mine --minerthreads 1 --etherbase=c9c96cee8e5063925cfc384138f7729896cd6c27 \
--rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcvhosts "*" --nat "any" --rpcapi eth,web3,personal,net --nousb \
--unlock 0 --password /geth/password.sec --allow-insecure-unlock \
--bootnodes enode://5ab39f64982371076198d2b25e3c6340e49fab2805c525042e9dd5784796ea40d355a96bc8e7e4151829c2947edc6ee77ebc4aceed305f0df082c75bf119565c@geth-node2:30303,enode://b673daea1e17072d5d104f2bb7b82d2147cc8e481509174b7ef87ec554c5cbf03d1446f79e9e2181083d7c2f1662528c36304a7b98c09f02b3a7a5ea90d85055@geth-node3:30303
