"""Loads the Flatbuffers library, used by TF Lite."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "flatbuffers",
        strip_prefix = "flatbuffers-rrb-v2",
        sha256 = "78999899819db42b9a60085f2e3cb60d47a49200a98c0ae95e105fe9fa7f1aa6",
        urls = [
            "https://github.com/rrbpalm/flatbuffers/archive/refs/tags/rrb-v2.tar.gz",
        ],
        build_file = "//third_party/flatbuffers:BUILD.bazel",
        system_build_file = "//third_party/flatbuffers:BUILD.system",
        delete = ["build_defs.bzl"],
        link_files = {
            "//third_party/flatbuffers:build_defs.bzl": "build_defs.bzl",
        },
    )
