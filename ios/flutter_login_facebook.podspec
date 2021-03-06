#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_login_facebook.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_login_facebook_ntt'
  s.version          = '1.0.4'
  s.summary          = 'Login via Facebook for Flutter projects.'
  s.description      = <<-DESC
Login via Facebook for Flutter projects.
                       DESC
  s.homepage         = 'https://github.com/nttra83/flutter_login_facebook'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'ntt' => 'info@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'FBSDKLoginKit', '~> 7.0'
  s.platform = :ios, '10.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
