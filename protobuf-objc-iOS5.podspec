Pod::Spec.new do |s|
  s.name     = 'protobuf-objc-iOS5'
  s.header_dir = "ProtocolBuffers"
  s.version  = '0.0.3'
  s.license  = 'Apache 2.0'
  s.summary  = 'An implementation of Protocol Buffers in Objective C.'
  s.homepage = 'https://github.com/jrmiddle/protobuf-objc-iOS5'
  s.authors   = { 'Justin Middleton' => 'justin@whistle.com', 'Ragy Eleish' => 'ragy@regwez.com', 'Cyrus' => 'cyrusn@stwing.upenn.edu', 'Robert Carlsen' => 'robert@robertcarlsen.net' }
  s.source   = { :git => 'https://github.com/rcarlsen/protobuf-objc-iOS5.git', :tag => '0.0.3' }
  s.xcconfig = { 'WARNING_CFLAGS' => '-Wno-missing-prototypes -Wno-format' }
  s.requires_arc = true

  s.subspec 'Runtime' do |ss|
    ss.source_files = 'src/runtime/Classes/*.{h,m}'
  end

  # this subspec should not be used...it is just a way to separate
  # the runtime files and ease pod integration with other projects
  s.subspec 'Compiler' do |ss|
    ss.preserve_paths = [
      "src/compiler/protoc-gen-objc"
    ]

    ss.prepare_command = './autogen.sh && ./configure && make'
  end

end
