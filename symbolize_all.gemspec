# -*- encoding: utf-8 -*-
require File.expand_path('../lib/symbolize_all/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["David Jairala"]
  gem.email         = ["davidjairala@gmail.com"]
  gem.description   = %q{Symbolizes everything possible in a Hash or Array}
  gem.summary       = %q{Converts every possible key/value inside a Hash or Array into its symbolized version, recursively}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "symbolize_all"
  gem.require_paths = ["lib"]
  gem.version       = SymbolizeAll::VERSION
end
