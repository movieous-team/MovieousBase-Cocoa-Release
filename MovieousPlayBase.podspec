Pod::Spec.new do |spec|
  spec.ios.deployment_target = '8.0'
  spec.name         = 'MovieousPlayBase'
  spec.version      = `sh utils.sh get-version-play`
  spec.homepage     = 'https://github.com/movieous-team/MovieousBase-Cocoa-Release'
  spec.authors      = { 'movieous' => 'cloudop@movieous.video' }
  spec.summary      = 'Movieous base library for iOS.'
  spec.source       = { :git => 'https://github.com/movieous-team/MovieousBase-Cocoa-Release.git', :tag => "v#{spec.version}" }
  spec.static_framework = true
  spec.vendored_frameworks = 'MovieousPlayBase.framework'
  spec.dependency 'MovieousBase', '2.0.1'
end