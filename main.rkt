#!/usr/bin/env racket
#lang racket/base

;; Notice
;; To install (from within the package directory):
;;   $ raco pkg install
;; To install (once uploaded to pkgs.racket-lang.org):
;;   $ raco pkg install <<name>>
;; To uninstall:
;;   $ raco pkg remove <<name>>
;; To view documentation:
;;   $ raco doc <<name>>

;; Code here

(module+ main
  ;; Main entry point, executed when run with the `racket` executable or DrRacket.
  (require "json-rpc-client/main.rkt")
  )
