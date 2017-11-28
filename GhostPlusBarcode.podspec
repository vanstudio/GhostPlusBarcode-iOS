@version = "1.01"
Pod::Spec.new do |s|
  s.name             = 'GhostPlusBarcode'
  s.version          = @version
  s.summary          = 'Ghost Plus Barcode Framework'
  s.description      = 'Ghost Plus Barcode Framework'
  s.homepage         = 'http://www.ghostplus.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'VANSTUDIO' => 'vanstudio@ghost-corps.com' }
  
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  
  s.vendored_frameworks = ['Frameworks/GhostPlusBarcode.framework']
  
  #s.source           = { :http => 'http://developer.ghostplus.com/project/ghostplus_ios/GhostPlus-1.00.tar.gz', :flatten => true }
  s.source       = { :git => "https://github.com/vanstudio/GhostPlusBarcode-iOS.git", :tag => @version }
  
  s.source_files = []
  s.resource = 'Frameworks/GhostPlusBarcode.framework/Versions/A/Resources/GhostPlusBarcodeResources.bundle'
  
  s.preserve_paths = []
  s.header_dir = 'GhostPlusBarcode'

  s.frameworks = ['GhostPlusBarcode']
  #s.libraries = ['stdc++', 'z']
  
  #s.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/TestGhostPlus"' }
  
  s.dependency 'GhostPlus'
  s.dependency 'ZXingObjC', '~> 3.1.0'
  s.dependency 'ZBarSDK', '~> 1.3.1'
end