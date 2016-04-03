# json-rpc-client

JSON-RPC client in racket

## Installation

```
git clone https://github.com/vdloo/json-rpc-client && \
cd json-rpc-client && \
raco pkg install
```

## Usage

Require the package, create the payload as a hash and send it to a URL.

```
(require json-rpc-client)

(define payload 
  (hasheq
    'method "JSONRPC.Introspect" 
    'jsonrpc "2.0" 
    'id 1))

(json-rpc-client "http://127.0.0.1:8088/jsonrpc" payload) 
```

## Development

Running the tests once:
```
./runtests.sh -1
```

Running the tests in a loop:
```
./runtests.sh
```
