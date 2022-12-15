Pod::Spec.new do |s|
  s.name         = "GliderSentry"
  s.version      = "2.0.0"
  s.summary      = "Sentry.io Transport for Glider - Universal Logging for Swift"
  s.homepage     = "https://github.com/immobiliare/Glider-Sentry.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Immobiliarelabs" => "mobile@immobiliare.it" }
  s.social_media_url   = "https://twitter.com/immobiliarelabs"
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = "10.14"
  s.tvos.deployment_target = "12.0"

  s.source           = {
    :git => 'https://github.com/immobiliare/Glider-Sentry.git',
    :tag => s.version.to_s
  }
  s.swift_versions = ['5.0', '5.1', '5.3', '5.4', '5.5', '5.7']
  s.framework = 'UIKit'

  s.module_name = "GliderSentry"
  s.source_files = 'GliderSentry/Sources/**/*'
  s.dependency 'GliderLogger', '~> 2'
  s.dependency 'Sentry', "~> 7"

end
