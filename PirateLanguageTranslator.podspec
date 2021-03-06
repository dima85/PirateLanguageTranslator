#
# Be sure to run `pod lib lint PirateLanguageTranslator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PirateLanguageTranslator'
  s.version          = '0.1.0'
  s.summary          = 'Test library for payworks'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "Wrapper for calling http://isithackday.com/arrpi.php and convert result."

  s.homepage         = 'https://github.com/dima85/PirateLanguageTranslator'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Dmytro.Shykaliuk' => 'dshykaljuk@gmail.com' }
  s.source           = { :git => 'https://github.com/dima85/PirateLanguageTranslator.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'PirateLanguageTranslator/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PirateLanguageTranslator' => ['PirateLanguageTranslator/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Alamofire', '~> 3.4'
  s.dependency 'AlamofireObjectMapper'
end
