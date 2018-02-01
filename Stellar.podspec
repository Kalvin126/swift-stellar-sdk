#
# Be sure to run `pod lib lint StellarSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Stellar'
  s.version          = '0.1.0'
  s.summary          = 'Stellar Swift Native SDK'

  s.description      = "Native Swift SDK for Stellar Horrizon Nodes"

  s.homepage         = 'https://github.com/Kalvin/Stellar'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kalvin' => 'kalvin126@gmail.com' }
  s.source           = { :git => 'https://github.com/Kalvin/Stellar.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.tvos.deployment_target = '10.0'
  s.osx.deployment_target = '10.12'

  s.source_files = 'Stellar/Classes/**/*'
  
  # s.resource_bundles = {
  #   'StellarSwift' => ['StellarSwift/Assets/*.png']
  # }

  s.frameworks = 'Foundation'
end
