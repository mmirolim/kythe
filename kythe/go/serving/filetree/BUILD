load("//tools/build_rules/go", "go_library")

package(default_visibility = ["//visibility:public"])

go_library(
    name = "filetree",
    srcs = [
        "filetree.go",
    ],
    deps = [
        "//kythe/go/storage/table",
        "//kythe/proto:serving_proto",
    ],
)
