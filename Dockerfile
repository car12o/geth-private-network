FROM ethereum/client-go:stable
WORKDIR /geth

COPY genesis.json /geth/genesis.json
RUN geth init --datadir /geth/data /geth/genesis.json

ARG CONFIG_PATH
COPY ${CONFIG_PATH}/boot.key /geth/boot.key
COPY ${CONFIG_PATH}/entrypoint.sh /geth/entrypoint.sh

COPY keystore/* /geth/data/keystore/
COPY password.sec /geth/password.sec

ENTRYPOINT [ "/geth/entrypoint.sh" ]
