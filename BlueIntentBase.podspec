#
# Be sure to run `pod lib lint BlueIntentBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BlueIntentBase'
  s.version          = '0.1.0'
  s.summary          = 'Use `BlueIntentExtension` proxy as customization point for constrained protocol extensions.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  - Extend BlueIntentExtension protocol with constrain on Base
  - 参照 kotlin，提供作用域函数 (let, var)，优雅的解包
                       DESC

  s.homepage         = 'https://github.com/qiuzhifei/BlueIntentBase'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'qiuzhifei' => 'qiuzhifei521@gmail.com' }
  s.source           = { :git => 'https://github.com/qiuzhifei/BlueIntentBase.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.swift_versions = ['5.1', '5.2', '5.3']

  s.source_files = 'BlueIntentBase/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BlueIntentBase' => ['BlueIntentBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
