#
#  Be sure to run `pod spec lint HelloGit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = 'Alert'
  s.version      = '0.0.1'
  s.summary      = 'Alert summary'
  s.description  = 'Alert description'
  s.homepage     = "https://github.com/Colin225/Alert"
  s.license      = "MIT"
  s.author             = { "Colin" => "502383520@qq.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/Colin225/Alert.git", :tag => s.version }
  s.source_files  = 'Classes/*'
  # s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
