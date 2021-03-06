# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mollie_ideal/version'

Gem::Specification.new do |gem|
  gem.name          = "mollie_ideal"
  gem.version       = MollieIdeal::VERSION
  gem.authors       = ["Johan van Zonneveld"]
  gem.email         = ["johan@vzonneveld.nl"]
  gem.homepage      = 'https://github.com/jhnvz/mollie_ideal.git'
  gem.summary       = %q{wrapper for the mollie ideal api}
  gem.description   = %q{A simple Ruby implementation for handeling iDeal transactions with the Mollie API}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", ">= 1.0.0"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", "~> 2.3"
  gem.add_development_dependency 'webmock'

  gem.add_dependency 'httparty', '~> 0.8.0'
  gem.add_dependency 'hashie'
end
