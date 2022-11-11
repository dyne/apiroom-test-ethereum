#!/bin/bash

nohup ganache --chain.chainId $1 --wallet.seed "$2" &

truffle migrate
