#
# Be sure to run `pod lib lint woyaokankan.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'woyaokankan'
  s.version          = '0.1.0'
  s.summary          = 'A我要看看啊啊啊啊'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
就是不想写这个啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊
                       DESC

  s.homepage         = 'https://github.com/weichengdd01/woyaokankan'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cwsqrs' => 'weicheng@hk01.com' }
  s.source           = { :git => 'https://github.com/weichengdd01/woyaokankan.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'
  s.source_files = 'woyaokankan/Classes/**/*'
  
  # s.resource_bundles = {
  #   'woyaokankan' => ['woyaokankan/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
