
  Pod::Spec.new do |s|
    s.name = 'DeviceStorageInfo'
    s.version = '0.0.1'
    s.summary = 'Information about device storage'
    s.license = 'MIT'
    s.homepage = 'https://github.com/AntuVMAvha/capacitor-device-storage-info.git'
    s.author = 'Antú Villegas'
    s.source = { :git => 'https://github.com/AntuVMAvha/capacitor-device-storage-info.git', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.dependency 'Capacitor'
  end