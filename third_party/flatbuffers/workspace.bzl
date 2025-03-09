"""Loads the Flatbuffers library, used by TF Lite."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "flatbuffers",
        strip_prefix = "flatbuffers-rrb-v1",
        sha256 = "6ba429216c5d7b48c7af6b231ddffdc6bfc1a1d1935d7e5a5589f905e1ee7ee8",
        urls = [
            "https://github.com/rrbpalm/flatbuffers/archive/refs/tags/rrb-v1.tar.gz",
        ],
        build_file = "//third_party/flatbuffers:BUILD.bazel",
        system_build_file = "//third_party/flatbuffers:BUILD.system",
        delete = ["build_defs.bzl"],
        link_files = {
            "//third_party/flatbuffers:build_defs.bzl": "build_defs.bzl",
        },
    )
