# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kumocast_cli/version'

Gem::Specification.new do |spec|
  spec.name          = 'kumocast_cli'
  spec.version       = KumocastCli::VERSION
  spec.authors       = ['karur4n']
  spec.email         = ['karuran.f@gmail.com']

  spec.summary       = 'cli for kumocast'
  spec.description   = 'cli for kumocast'
  spec.homepage      = 'https://github.com/kumocast/kumocast_cli'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = 'kumocast'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
