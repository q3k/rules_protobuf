
DEPS = {

    "com_google_protobuf": {
        "rule": "http_archive",
        "url": "https://github.com/google/protobuf/archive/7b28271a61a3da0a37f6fda399b0c4c86464e5b3.zip",
        "strip_prefix": "protobuf-7b28271a61a3da0a37f6fda399b0c4c86464e5b3",
        "sha256": "d625beb4a43304409429a0466bb4fb44c89f7e7d90aeced972b8a61dbe92c80b",
    },


    # This binds the cc_binary "protoc" into
    # //external:protoc. Required by grpc++.
    "protoc": {
        "rule": "bind",
        "actual": "@com_google_protobuf//:protoc",
    },

    # Bind the protobuf proto_lib into //external.  Required for
    # compiling the protoc_gen_grpc plugin
    "protocol_compiler": {
        "rule": "bind",
        "actual": "@com_google_protobuf//:protoc",
    },

    # grpc++ expects "//external:protobuf"
    "protobuf": {
        "rule": "bind",
        "actual": "@com_google_protobuf//:protobuf",
    },

    # grpc++ expects "//external:protobuf_clib"
    "protobuf_clib": {
        "rule": "bind",
        "actual": "@com_google_protobuf//:protoc_lib",
    },

    "protobuf_headers": {
        "rule": "bind",
        "actual": "@com_google_protobuf//:protobuf_headers",
    },

}
