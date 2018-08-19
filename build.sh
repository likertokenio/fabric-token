#!/bin/bash
set -v

echo "Get dependencies..."
go get -u github.com/hyperledger/fabric/core/chaincode/shim

echo "Build chaincode..."
go build -v -a -o build/chaincode ./chaincode

