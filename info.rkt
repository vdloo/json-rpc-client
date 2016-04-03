#lang info
(define collection "json-rpc-client")
(define deps '("base" "rackunit-lib" "net/http-client"))
(define build-deps '("scribble-lib" "racket-doc"))
(define scribblings '(("scribblings/json-rpc-client.scrbl" ())))
(define pkg-desc "Library for talking with json-rpc APIs")
(define version "0.1")
(define pkg-authors '(vdloo))
