Pod::Spec.new do |s|

  s.name         = "SourceryForRetrofire"
  s.version      = "0.16.0-sfr-0"
  s.summary      = "A slightly edited version of Sourcery used for RetrofireSwift"

  s.description  = <<-DESC
                 This tool is a fork of Sourcery (https://github.com/krzysztofzablocki/Sourcery) which has been modified to be more similar to 
                 Java/Kotlin annotations. This fork is made specifically for RetrofireSwift (https://github.com/dcoletto/RetrofireSwift) 
                 so SourceryForRetrofire will be only able to read RetrofireSwift annotations.
                 The original Sourcery tools is from Krzysztof Zabłocki, and all credit belongs to him and his wonderful project.
                   DESC

  s.homepage     = "https://github.com/dcoletto/SourceryForRetrofire"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Coletto Dario' => 'dcoletto.sw@gmail.com' }
  s.social_media_url = 'https://twitter.com/coletzLp'

  s.source           = { :git => 'https://github.com/dcoletto/SourceryForRetrofire.git', :tag => s.version.to_s }
  s.preserve_paths = '*'
  s.exclude_files = '**/file.zip'

end
