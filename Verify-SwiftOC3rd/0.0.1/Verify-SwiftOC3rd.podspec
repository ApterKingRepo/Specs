
Pod::Spec.new do |s|

  s.name         = "Verify-SwiftOC3rd"
  s.version      = "0.0.1"
  s.summary      = "验证私有组件中使用Swift结合OC第三方.framewor、.library库及OC文件组合打包构建私有Pod"
  s.homepage     = "https://github.com/ApterKingRepo/Verify-Swift-OC3rd"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "ApterKing" => "wangcccong@outlook.com" }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/ApterKingRepo/Verify-Swift-OC3rd.git", :tag => "#{s.version}" }

  #s.source_files  = "Pod/Classes/*.swift"
  # s.public_header_files = "Classes/**/*.h"

  #s.frameworks = "UIKit", "Foundation"

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  s.requires_arc = true

  s.subspec 'BaiduMapKit' do |ss|
    ss.ios.deployment_target = '5.0'

    ss.source_files = 'BaiduMapKit/*.framework/Headers/**.h'
    ss.public_header_files = 'BaiduMapKit/*.framework/Headers/**.h'
    
    ss.frameworks   =  "CoreLocation", "QuartzCore", "OpenGLES", "SystemConfiguration", "CoreGraphics", "Security", "CoreTelephony"
    ss.libraries    = "sqlite3.0", "stdc++.6.0.9"
  
    ss.vendored_frameworks =  "BaiduMapKit/*.framework"
    ss.vendored_libraries = "BaiduMapKit/thirdlibs/*.a"
  end

end
