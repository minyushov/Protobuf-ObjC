# Protocol Buffers 2.6.1, Objective-C with ARC

This is an ARC enabled version of the [Protocol Buffers in Objective C][protobuf-objc] project. It supports Protobuf 2.6.1.

Protocol Buffers are a way of encoding structured data in an efficient yet extensible format.
This project is based on an implementation of Protocol Buffers from Google.  See the
[Google protobuf project][g-protobuf] for more information.

[g-protobuf]: http://code.google.com/p/protobuf/
[protobuf-objc]: https://github.com/booyah/protobuf-objc

# How to use
In order to generate classes from .proto files use following steps:

1. Install [Command Line Tools](https://developer.apple.com/downloads/index.action) for your OS X version.
2. Install [Homebrew](http://brew.sh).
3. Resolve all warnings in `brew doctor` output.
4. Run `brew install protobuf`.
5. Run `brew install autogen`.
6. Run `brew install automake`.
7. Run `./autogen.sh && ./configure && make`. Executable file will be placed to `src/compiler/protoc-gen-objc`.
8. Run `protoc` with `--plugin=<path_to_protoc_gen_objc>` argument.<br>Output files will be placed in directory specified in `--objc_out` argument.<br>Example: `protoc --plugin=src/compiler/protoc-gen-objc --proto_path=. --objc_out=. 1.proto`

# Credits

- Greg Arakelian <greg@arakelian.com>
- Ragy Eleish <ragy@regwez.com>
- Jon Parise <jon@booyah.com>
- Cyrus Najmabadi  (http://code.google.com/p/metasyntactic/wiki/ProtocolBuffers)
- Sergey Martynov  (http://github.com/martynovs/protobuf-objc)
- Kenton Varda, Sanjay Ghemawat, Jeff Dean, and others
