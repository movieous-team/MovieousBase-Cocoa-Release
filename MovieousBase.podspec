Pod::Spec.new do |spec|
  spec.ios.deployment_target = '8.0'
  spec.name         = 'MovieousBase'
  spec.version      = `sh utils.sh get-version-base`
  spec.homepage     = 'https://github.com/movieous-team/MovieousBase-Cocoa-Release'
  spec.authors      = { 'movieous' => 'cloudop@movieous.video' }
  spec.summary      = 'Movieous base library for iOS.'
  spec.source       = { :git => 'https://github.com/movieous-team/MovieousBase-Cocoa-Release.git', :tag => "v#{spec.version}" }
  spec.static_framework = true
  spec.vendored_frameworks = 'MovieousBase.framework'
end