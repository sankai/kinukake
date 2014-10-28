# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kinukake/version'

Gem::Specification.new do |spec|
  spec.name          = "kinukake"
  spec.version       = Kinukake::VERSION
  spec.authors       = ["Kazutaka Sankai"]
  spec.email         = ["Sankai_Kazutaka@ogis-ri.co.jp"]
  spec.description   = %q{"Kinukane is a small gem for interface for shell command"}
  spec.summary       = %q{"kinukane is a facade for unix madiating shell stdi and stdo "}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
