#
# Be sure to run `pod lib lint Retrofire.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RetrofireSwift'
  s.version          = '0.3.1'
  s.summary          = 'A type-safe HTTP client for Swift, inspired by Retrofit'

  s.description      = <<-DESC
  Protocol-based networking (with a bit of Sourcery) used to generate statically typed API Client;
  This library is inspired by the JVM library Retrofit and is a sort of wrapper for Alamofire (hence the name).
  You will need to create a Protocol describing your APIs, then Sourcery will generate the actual Alamofire code
                       DESC

  s.homepage         = 'https://github.com/dcoletto/RetrofireSwift'
  s.screenshots      = 'https://raw.githubusercontent.com/dcoletto/RetrofireSwift/master/retrofire-sample-usage.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Coletto Dario' => 'dcoletto.sw@gmail.com' }
  s.source           = { :git => 'https://github.com/dcoletto/RetrofireSwift.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/coletzLp'

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'

  s.source_files = 'Sources/*.swift'
  s.resources = [ 'retrofire.sh', 'Templates/*.stencil' ]
  
  s.dependency 'Alamofire'
  s.dependency 'SourceryForRetrofire', '0.16.0-sfr-6'
end
