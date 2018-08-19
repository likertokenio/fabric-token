PWD := `pwd`

default: build

build: clean
	docker run --rm -v $(PWD):/go/src/github.com/token -w /go/src/github.com/token golang:1.10 ./build.sh

test: build
	docker run --rm -v $(PWD):/go/src/github.com/token -w /go/src/github.com/token/chaincode golang:1.10 go test

clean:
	rm  -f ./build | true
