#
# Be sure to run `pod lib lint IJKMediaFrameworkWithSSL.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'IJKMediaFrameworkWithSSL'
  s.version          = '0.1.0'
  s.summary          = 'a ijkplayer framework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  a ijkplayer framework based on ijkplayer (commit  ff4.0--ijk0.8.8--20210426--001) and openssl (commit OpenSSL_1_0_2u)
                       DESC

  s.homepage         = 'https://github.com/niwaguan/IJKMediaFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '泥瓦罐' => 'niwaguan@gmail.com' }
  s.source           = { :git => 'https://github.com/niwaguan/IJKMediaFramework.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  
  s.vendored_frameworks = 'IJKMediaFramework/IJKMediaFrameworkWithSSL.framework'
  
  s.frameworks  = "AudioToolbox", "AVFoundation", "CoreGraphics", "CoreMedia", "CoreVideo", "MobileCoreServices", "OpenGLES", "QuartzCore", "VideoToolbox", "Foundation", "UIKit", "MediaPlayer"
  s.libraries   = "bz2", "z", "c++"

  s.requires_arc = true
  s.static_framework = true

end
