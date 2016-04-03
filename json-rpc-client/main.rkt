#!/usr/bin/env racket
#lang racket/base

(provide json-rpc-client)

(require json)
(require net/url)

(define (post-to-url url data #:headers [headers '()])
  (read-line (post-pure-port (string->url url) (string->bytes/utf-8 data) headers)))

(define (post-json-to-url url data)
  (post-to-url url data #:headers '("Content-Type: application/json")))

; send a hash to a json-rpc, receive a hash as response
; example: (json-rpc-client "http://127.0.0.1:8123/jsonrpc" (hasheq 'method "JSONRPC.Introspect" 'jsonrpc "2.0" 'id "0"))
(define (json-rpc-client url payload)
  (string->jsexpr (post-json-to-url url (jsexpr->string payload))))
