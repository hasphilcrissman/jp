# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jp/version'

Gem::Specification.new do |spec|
  spec.name          = "jp"
  spec.version       = Jp::VERSION
  spec.authors       = ["Phil Crissman"]
  spec.email         = ["philc@tune.com"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_dependency 'mecab', '~> 0.996'
  spec.add_dependency 'langue', '~> 0.0.4'
  spec.add_dependency 'langue-japanese', '~> 0.0.4'
end
