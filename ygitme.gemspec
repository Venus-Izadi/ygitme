# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ygitme/version'

Gem::Specification.new do |spec|
  spec.name          = "ygitme"
  spec.version       = Ygitme::VERSION
  spec.authors       = ["Svetlana Filimonova"]
  spec.email         = ["sfilimonova@me.com"]

  spec.summary       = %q{Ygitme is a command line tool to learn git commands.}
  spec.description   = %q{Ygitme is a command line tool to learn git commands.}
  spec.homepage      = "http://pewpew.com"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["ygitme"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
