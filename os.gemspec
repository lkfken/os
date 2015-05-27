# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'os/version'

Gem::Specification.new do |spec|
  spec.name          = "os"
  spec.version       = OS::VERSION
  spec.authors       = ["Kenneth Leung"]
  spec.email         = ["kenneth@leungs.us"]
  spec.summary       = %q{The OS gem helps identify host system OS.}
  spec.description   = %q{The OS gem helps identify host system OS.  I found it from StackOverflow.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
