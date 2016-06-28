#
# Be sure to run `pod lib lint XChannel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'XChannel'
s.version          = '0.1'
s.summary          = 'XChannel iOS SDK is used to integrate iOS apps with XChannel Platform'

s.description      = <<-DESC
XChannel iOS SDK allows users to integrate their iOS apps with XChannel platform and take advantage of Proximity and Social marketing features that XChannel offers.
DESC

s.homepage         = 'http://www.xemobi.com'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'

s.license =  {
:text => "Copyright 2016 Xemobi Inc.",
:type => "Copyright"
}
s.author           = { 'xemobi' => 'info@xemobi' }
#s.source           = { "http"=> "https://s3.amazonaws.com/xchannel.ios.sdk/XChannel.framework.1.0.tar.gz"}
s.source = {:git=> "https://github.com/ushavydya/XChannel.git"}
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.platform     = :ios, "9.0"
s.source_files = 'XChannel/Classes/**/*','XChannel.framework/Headers/*.h'
s.ios.public_header_files =  'XChannel/Classes/Headers/*.h', 'XChannel.framework/Headers/*.h'
s.ios.vendored_frameworks = 'XChannel.framework'
s.ios.frameworks = 'CoreGraphics', 'Foundation', 'MobileCoreServices', 'Security', 'SystemConfiguration', 'UIKit'
s.resources = "XChannel.framework/config.xml", "XChannel.framework/config.json"
# s.resource_bundles = {
#   'XChannel' => ['XChannel/Assets/*.png']
# }

s.dependency 'AFNetworking', '~> 3.0'
s.dependency 'Mantle', '~>2.0.4'
s.dependency 'AWSCore'
s.dependency 'AWSS3'

end
