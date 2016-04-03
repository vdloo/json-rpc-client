(require "../json-rpc-client/utils.rkt")

(define utils-tests
  (test-suite
    "Tests for json-rpc-client/utils"

    (test-case
      "check if get-baseurl-from-url returns baseurl"
      (check-equal?
	(get-baseurl-from-url "https://user:password@example.com:80/bla/bla?param=someparam")
	"https://user:password@example.com:80"))

    (test-case
      "check if get-path-from-url returns path"
      (check-equal?
	(get-path-from-url "https://user:password@example.com:80/bla/bla?param=someparam")
	"/bla/bla?param=someparam"))))
