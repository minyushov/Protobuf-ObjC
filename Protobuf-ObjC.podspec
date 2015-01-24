Pod::Spec.new do |s|
  s.name     = 'Protobuf-ObjC'
  s.header_dir = "ProtocolBuffers"
  s.version  = '1.0.0'
  s.license  = 'Apache 2.0'
  s.summary  = 'An implementation of Protocol Buffers in Objective C.'
  s.homepage = 'https://github.com/semikmsv/Protobuf-ObjC'
  s.authors   = { 'Justin Middleton' => 'justin@whistle.com', 'Ragy Eleish' => 'ragy@regwez.com', 'Cyrus' => 'cyrusn@stwing.upenn.edu', 'Robert Carlsen' => 'robert@robertcarlsen.net' }
  s.source   = { :git => 'https://github.com/semikmsv/Protobuf-ObjC.git', :tag => '1.0.0' }
  s.xcconfig = { 'WARNING_CFLAGS' => '-Wno-missing-prototypes -Wno-format' }
  s.requires_arc = true

  s.subspec 'Runtime' do |ss|
    ss.source_files = 'src/runtime/Classes/*.{h,m}'
  end
end