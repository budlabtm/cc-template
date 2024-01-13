all: build package

build:
	@bazel build //...
	@mv -f bazel-bin/* bin/

package:

test:
	@bazel test //...

docs:
	@doxygen Doxyfile

clean:
	@rm -rf bazel-*
	@rm -rf bin/*
	@rm -rf docs/*
	@rm -rf lib/*