# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'logdna/version'

Gem::Specification.new do |spec|
  spec.name          = 'logdna'
  spec.version       = LogDNA::VERSION
  spec.authors       = 'Gun Woo Choi'
  spec.email         = 'matt.choi@logdna.com'

  spec.summary       = 'LogDNA extension to ruby logger'
  spec.homepage      = 'https://github.com/logdna/ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'concurrent-ruby', '>= 1.0.5'
  spec.add_runtime_dependency 'json', '>= 2.0.2'
  spec.add_runtime_dependency 'openssl', '>= 2.0.3'
  spec.add_runtime_dependency 'socket', '>= 1.9.3'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.5'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'webmock', '~> 2.3'
end