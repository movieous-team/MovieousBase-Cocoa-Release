Pod::Spec.new do |spec|
  spec.ios.deployment_target = '8.0'
  spec.name         = 'MovieousCaptureBase-CN'
  spec.version      = `sh utils.sh get-version`
  spec.homepage     = 'https://movieous-team.coding.net/p/MovieousBase-Cocoa-Release/d/MovieousBase-Cocoa-Release/git'
  spec.authors      = { 'movieous' => 'cloudop@movieous.video' }
  spec.summary      = 'Movieous base library for iOS.'
  spec.source       = { :git => 'https://e.coding.net/movieous-team/MovieousBase-Cocoa-Release.git', :tag => "v#{spec.version}" }
  spec.static_framework = true
  spec.vendored_frameworks = 'MovieousCaptureBase.framework'
  spec.dependency 'MovieousBase-CN', '2.0.0'
end