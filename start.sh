#!/bin/bash

nohup ganache --server.host "0.0.0.0" --server.port 9485  --chain.chainId $1 --wallet.seed "$2" &

truffle migrate
