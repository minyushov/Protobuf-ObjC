Pod::Spec.new do |s|
  s.name     = 'protobuf-objc-iOS5'
  s.header_dir = "ProtocolBuffers"
  s.version  = '0.0.1'
  s.license  = 'Apache 2.0'
  s.summary  = 'An implementation of Protocol Buffers in Objective C.'
  s.homepage = 'https://github.com/jrmiddle/protobuf-objc-iOS5'
  s.authors   = { 'Justin Middleton' => 'justin@whistle.com', 'Ragy Eleish' => 'ragy@regwez.com', 'Cyrus' => 'cyrusn@stwing.upenn.edu' }
  s.source   = { :git => 'https://github.com/jrmiddle/protobuf-objc-iOS5.git' }
  s.source_files = 'src/runtime/Classes/*.{h,m}'
  s.xcconfig = { 'WARNING_CFLAGS' => '-Wno-missing-prototypes -Wno-format' }
#  s.resources = [
#    "src/compiler/protoc-gen-objc"
#  ]
  s.preserve_paths = [
    "src/compiler/protoc-gen-objc"
  ]

  def s.pre_install(pod, target_definition)
    Dir.chdir(pod.root) do
      `./autogen.sh && ./configure && make`
    end
  end
end
