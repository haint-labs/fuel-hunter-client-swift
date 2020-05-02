  Pod::Spec.new do |spec|
    spec.name = 'FHClient'
    spec.version = '0.0.1'

    spec.license = { :type => 'MIT' }
    spec.homepage = 'https://github.com/haint-labs/fuel-hunter-client-swift'
    spec.authors = { 'sashjakk' => 'sashjakk@gmail.com' }
    
    spec.summary = 'Auto generated GRPC client for iOS'
    
    spec.swift_versions = ['5.1']
    spec.source = { :git => 'https://github.com/haint-labs/fuel-hunter-client-swift.git', :tag => spec.version }
    spec.source_files = 'Sources/FHClient/**/*.swift'
    
    spec.ios.deployment_target = '10.0'
    
    spec.dependency 'gRPC-Swift', '1.0.0-alpha.11'
  end