all: build package

build:
	@bazel build //...
	@mv -f bazel-bin/* bin/

.PHONY: run
run: build
	@bazel run //:app

.PHONY: test
test:
	@bazel test --test_output=all //test/...

docs:
	@doxygen Doxyfile

clean:
	@rm -rf bazel-*
	@rm -rf bin/*
	@rm -rf docs/*
	@rm -rf lib/*
	@rm -rf external
