# -*- encoding: utf-8 -*-
require File.expand_path('../lib/minitest/rspec_should_syntax/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jean-Michel Garnier"]
  gem.email         = ["jean-michel@21croissants.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "minitest-rspec_should_syntax"
  gem.require_paths = ["lib"]
  gem.version       = Minitest::RspecShouldSyntax::VERSION

  gem.add_development_dependency 'bundler',   '~> 1.1.0'
  gem.add_development_dependency 'minitest',  '~> 2.3'
  gem.add_development_dependency 'guard'
  gem.add_development_dependency 'growl'
  gem.add_development_dependency 'guard-minitest' # ensures you're using the gem, and not the built in 1.9
end
