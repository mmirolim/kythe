package(default_visibility = ["//visibility:public"])

action_listener(
    name = "extract_kindex",
    extra_actions = [":extra_action"],
    mnemonics = ["Javac"],
)

extra_action(
    name = "extra_action",
    cmd = "$(location :java_extractor) $(EXTRA_ACTION_FILE) $(output $(ACTION_ID).kindex)",
    out_templates = ["$(ACTION_ID).kindex"],
    tools = [":java_extractor"],
)

java_binary(
    name = "java_extractor",
    srcs = [
        "JavaExtractor.java",
    ],
    main_class = "com.google.devtools.kythe.extractors.java.bazel.JavaExtractor",
    # TODO(schroederc): determine why this is needed; Bazel issue?
    runtime_deps = ["//kythe/proto:any_proto"],
    deps = [
        "//kythe/java/com/google/devtools/kythe/extractors/java",
        "//kythe/java/com/google/devtools/kythe/extractors/shared",
        "//third_party/bazel:extra_actions_base_proto",
        "//third_party/proto:protobuf_java",
    ],
)
