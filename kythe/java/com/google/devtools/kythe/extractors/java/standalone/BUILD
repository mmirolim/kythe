package(default_visibility = ["//visibility:public"])

java_binary(
    name = "javac_extractor",
    srcs = [
        "AbstractJavacWrapper.java",
        "Javac8Wrapper.java",
    ],
    main_class = "com.google.devtools.kythe.extractors.java.standalone.Javac8Wrapper",
    # TODO(schroederc): determine why this is needed; Bazel issue?
    runtime_deps = ["//kythe/proto:any_proto"],
    deps = [
        "//kythe/java/com/google/devtools/kythe/common",
        "//kythe/java/com/google/devtools/kythe/extractors/java",
        "//kythe/java/com/google/devtools/kythe/extractors/shared",
        "//kythe/java/com/google/devtools/kythe/extractors/shared:file_vnames",
        "//kythe/java/com/google/devtools/kythe/platform/indexpack",
        "//kythe/proto:analysis_proto",
        "//kythe/proto:storage_proto",
        "//third_party/guava",
        "//third_party/openjdk/lib:tools_jar",
        "//third_party/proto:protobuf_java",
    ],
)
