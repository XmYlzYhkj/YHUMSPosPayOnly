
Pod::Spec.new do |s|

  s.name         = "YHUMSPosPayOnly"
  s.version      = "0.3.1.1"
  s.summary      = "银联商务全民付移动支付"

  s.description  = "银联商务全民付移动支付-APP综合支付-商户客户端"

  s.homepage     = "https://github.com/XmYlzYhkj/YHUMSPosPayOnly"

  s.license      = "MIT"

  s.author       = { "XmYhkj" => "yhkj_xm@163.com" }
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/XmYlzYhkj/YHUMSPosPayOnly.git", :tag => s.version.to_s }

  s.source_files  = "UMSPosPayOnly", "UMSPosPayOnly/**/*.h"

  s.requires_arc = true

  s.frameworks       = 'SystemConfiguration', 'CoreMotion','CFNetwork', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation'

  s.libraries        = 'z', 'c++', 'sqlite3'

  s.vendored_libraries = "UMSPosPayOnly/*.a"
  

end
