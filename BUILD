cc_library(
    name = "project",
    srcs = glob(
        [
            "src/*.cc",
            "src/*.h",
        ],
        exclude = ["src/main.cc"],
    ),
    hdrs = glob(["include/**/*.h"]),
    includes = ["include"],
    visibility = ["//test:__pkg__"],
)

cc_binary(
    name = "app",
    srcs = ["src/main.cc"],
    deps = [":project"],
)
