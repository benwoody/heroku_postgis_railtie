# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heroku_postgis/version'

Gem::Specification.new do |spec|
  spec.name          = "heroku_postgis"
  spec.version       = HerokuPostgis::VERSION
  spec.authors       = ["Ben Woodall"]
  spec.email         = ["mail@benwoodall.com"]
  spec.description   = "Railtie to facilitate PostGis integration with Heroku."
  spec.summary       = "Heroku/PostGis Railtie"
  spec.homepage      = "http://github.com/benwoody/heroku_postgis"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]
end
