load("//tools/build_rules/go", "go_library")

package(default_visibility = ["//visibility:public"])

go_library(
    name = "stream",
    srcs = [
        "stream.go",
    ],
    deps = [
        "//kythe/go/platform/delimited",
        "//kythe/proto:storage_proto",
    ],
)
