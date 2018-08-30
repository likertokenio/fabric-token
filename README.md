### Ethereum-style token smart contract for Hyperledger Fabric 1.2

How to use it:

1. Clone the repository
2. Build with docker: `$ make build`
2. Run tests: `$ make test`
3. Install on peers:

```
peer chaincode install -n token -v 1.0 -p github.com/likerworldio/fabric-token/chaincode
```
4. Instantiate on peers:
```
peer chaincode instantiate \
  -o orderer_address:7050 \
  -C mychannel \
  -n token -v 1.0 \
  -c '{"Args":["init","{\"name\": \"Fabric Demo Token\", \"symbol\": \"FTD\", \"decimals\": 2,\"totalSupply\": 1000}"]}'
```
5. Query balance:
```
peer chaincode query -C mychannel -n token -c '{"Args":["balance","{\"user\": \"myuser\"}"]}'
```
6. Invoke transfer:
```
peer chaincode invoke -o orderer_address:7050 -C mychannel -n token -c '{"Args":["transfer","{\"to\": \"otherUser\", \"value\": 200}"]}'
```
