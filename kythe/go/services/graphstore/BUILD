load("//tools/build_rules/go", "go_library")

package(default_visibility = ["//visibility:public"])

go_library(
    name = "graphstore",
    srcs = [
        "graphstore.go",
    ],
    deps = [
        "//kythe/go/services/graphstore/compare",
        "//kythe/proto:storage_proto",
    ],
)
