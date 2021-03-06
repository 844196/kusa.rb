# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kusa/version'

Gem::Specification.new do |spec|
  spec.name          = 'kusa'
  spec.version       = Kusa::VERSION
  spec.authors       = ['Masaya Takeda']
  spec.email         = ['844196@gmail.com']

  spec.summary       = 'www'
  spec.description   = '牧草地を増やす牧場経営シミュレーション'
  spec.homepage      = 'http://github.com/844196/kusa.rb'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject {|f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.2.0'
  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'thor'
end
