
Pod::Spec.new do |s|

  s.name         = "YHUMSPosPayOnly"
  s.version      = "0.3.1.2"
  s.summary      = "银联商务全民付移动支付"

  s.description  = "银联商务全民付移动支付-APP综合支付-商户客户端"

  s.homepage     = "https://github.com/XmYlzYhkj/YHUMSPosPayOnly"

  s.license      = "MIT"

  s.author       = { "XmYhkj" => "yhkj_xm@163.com" }
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/XmYlzYhkj/YHUMSPosPayOnly.git", :tag => s.version.to_s }

  s.source_files  = "UMSPosPayOnly", "UMSPosPayOnly/**/*.h"

  s.requires_arc = true

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => '$(EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_$(EFFECTIVE_PLATFORM_SUFFIX)__NATIVE_ARCH_64_BIT_$(NATIVE_ARCH_64_BIT)__XCODE_$(XCODE_VERSION_MAJOR))',
    'EXCLUDED_ARCHS__EFFECTIVE_PLATFORM_SUFFIX_simulator__NATIVE_ARCH_64_BIT_x86_64__XCODE_1200' => 'arm64 arm64e armv7 armv7s armv6 armv8'
  }

  s.frameworks       = 'SystemConfiguration', 'CoreMotion','CFNetwork', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation'

  s.libraries        = 'z', 'c++', 'sqlite3'

  s.vendored_libraries = "UMSPosPayOnly/*.a"
  
  s.dependency 'WechatOpenSDK'

  s.dependency 'AlipaySDK-iOS'

end
