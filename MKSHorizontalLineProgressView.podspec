
#
# Be sure to run `pod lib lint MKSHorizontalLineProgressView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = "MKSHorizontalLineProgressView"
s.version          = "0.1.1"
s.summary          = "Its an Horizontal Line progress view  sub class of UIView"

s.description      = "A Horizontal line progress view a sub class of UIView written in Objectivec C"

s.homepage         = "https://github.com/kamarshad/MKSHorizontalLineProgressView"
s.license          = 'MIT'
s.author           = { "kamarshad" => "kamarshad0786@gmail.com" }
s.source           = { :git => "https://github.com/kamarshad/MKSHorizontalLineProgressView.git", :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/kamarshad'

s.platform     = :ios, '7.0'
s.requires_arc = true

s.source_files = 'Pod/Classes/**/*'

# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'

end




