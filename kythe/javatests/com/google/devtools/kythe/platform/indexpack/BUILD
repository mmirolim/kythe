package(default_visibility = ["//visibility:public"])

java_test(
    name = "archive_test",
    srcs = [
        "ArchiveTest.java",
    ],
    # TODO(schroederc): determine why this is needed; Bazel issue?
    runtime_deps = ["//kythe/proto:any_proto"],
    deps = [
        "//kythe/java/com/google/devtools/kythe/extractors/shared",
        "//kythe/java/com/google/devtools/kythe/platform/indexpack",
        "//kythe/java/com/google/devtools/kythe/util",
        "//kythe/proto:analysis_proto",
        "//kythe/proto:storage_proto",
        "//third_party:junit4",
        "//third_party/guava",
        "//third_party/proto:protobuf_java",
    ],
)
