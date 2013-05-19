# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'versioner/version'

Gem::Specification.new do |gem|
  gem.name          = "simple-versioner"
  gem.version       = Versioner::VERSION
  gem.authors       = ["Robbie Clutton"]
  gem.email         = ["robert.clutton@gmail.com"]
  gem.description   = %q{A way to retreive best placed versions}
  gem.summary       = %q{A way to retreive best placed versions}
  gem.homepage      = ""

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "zeus"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
