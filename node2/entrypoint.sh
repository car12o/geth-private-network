#!/bin/sh

geth --datadir /geth/data \
--networkid 8995 --nodekey=/geth/boot.key \
--mine --minerthreads 1 --etherbase=6997f69ac2c1b300f4a44abde19c237a9ac3026b \
--rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --nat "any" --rpcapi eth,web3,personal,net --nousb \
--unlock 1 --password /geth/password.sec --allow-insecure-unlock \
--bootnodes enode://0002c30213c65ab58eee83561a0b5ea1722802d4916f21eb586770a690827c803ffb55ab96ba9267e660ae207863b9849a696b00a2e0d9740813de8b1a8a226a@geth-node1:30303,enode://b673daea1e17072d5d104f2bb7b82d2147cc8e481509174b7ef87ec554c5cbf03d1446f79e9e2181083d7c2f1662528c36304a7b98c09f02b3a7a5ea90d85055@geth-node3:30303
