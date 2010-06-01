
NODE = node
TEST = support/expresso/bin/expresso
TESTS ?= test/*.test.js

test:
	@CONNECT_ENV=test CONNECT_CWD=test/fixtures/app ./$(TEST) -I lib $(TESTS)

benchmark: benchmarks/run
	@./benchmarks/run

graphs: benchmarks/graph
	@./benchmarks/graph

.PHONY: test test-debug benchmark graphs