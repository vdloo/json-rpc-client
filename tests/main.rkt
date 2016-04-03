#lang racket/base

(require rackunit)
(require rackunit/text-ui)
(require racket/include)

(include "unit/utils.rkt")

(run-tests utils-tests)
