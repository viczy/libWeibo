Pod::Spec.new do |s|
  s.name                = "libWeibo"
  s.version             = "3.1.4"
  s.summary             = "The Official iOS SDK Weibo Open API."
  s.homepage            = "http://open.weibo.com"
  s.license             = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright (c) 2014 Weibo. All rights reserved.
      LICENSE
  }
  s.platform            = :ios
  s.requires_arc        = true

  s.source              = { :git=> "https://github.com/viczy/libWeibo.git", :tag => s.version.to_s }
  s.source_files        = 'libWeibo/*.{h,m}' 
  s.public_header_files = 'libWeibo/*.h'
  s.resource            = 'libWeibo/WeiboSDK.bundle'
  s.vendored_libraries  = 'libWeibo/libWeiboSDK.a'
  s.frameworks          = 'ImageIO', 'SystemConfiguration', 'CoreText', 'QuartzCore', 'Security', 'UIKit', 'Foundation', 'CoreGraphics','CoreTelephony'
  s.libraries           = 'sqlite3', 'z'
end
