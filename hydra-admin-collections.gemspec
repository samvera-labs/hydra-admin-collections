# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hydra/admin/collections/version'

Gem::Specification.new do |spec|
  spec.name          = "hydra-admin-collections"
  spec.version       = Hydra::Admin::Collections::VERSION
  spec.authors       = ["Justin Coyne"]
  spec.email         = ["justin@curationexperts.com"]
  spec.description   = %q{Administrative colletions for Hydra}
  spec.summary       = %q{Each object can belong to one and only one administrative collection. }
  spec.homepage      = "https://github.com/projecthydra/hydra-admin-collections"
  spec.license       = "APACHE2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "hydra-head", "~> 9.0.1"
  spec.add_dependency "active-fedora", "~> 9.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "engine_cart"
end
