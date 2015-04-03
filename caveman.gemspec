# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'caveman/version'

Gem::Specification.new do |spec|
  spec.name          = "caveman"
  spec.version       = Caveman::VERSION
  spec.authors       = ["ipc103"]
  spec.email         = ["iancandysemail@gmail.com"]
  spec.summary       = %q{Takes any text and returns it how a caveman would say it.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ["caveman"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
