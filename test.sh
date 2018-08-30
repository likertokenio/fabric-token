#!/bin/bash
set -v

echo "Get dependencies..."
go get -u github.com/hyperledger/fabric/core/chaincode/shim

echo "test chaincode..."
go test

