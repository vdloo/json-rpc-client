#!/usr/bin/env racket
#lang racket/base

(require racket/string)

(provide get-baseurl-from-url)
(provide get-path-from-url)

; get the baseurl from a url
; protocol + auth + subdomain + domain name + port
; https://user:password@example.com:80/bla/bla?param=1 
; -> https://user:password@example.com:80
(define (get-baseurl-from-url url)
  (car (regexp-match #px"https?://[^/]+" url)))

; get the path from a url
; query + parameters + fragment
; https://user:password@example.com:80/bla/bla?param=1 
; -> /bla/bla?param=1
(define (get-path-from-url url)
  (string-replace url (get-baseurl-from-url url) ""))

