# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "beaker/i18n_helper/version"

Gem::Specification.new do |spec|
  spec.name          = "beaker-i18n_helper"
  spec.version       = Beaker::I18nHelper::VERSION
  spec.authors       = ["Eric Putnam"]
  spec.email         = ["eric.putnam@puppet.com"]

  spec.summary       = %q{Ruby gem to help testing i18n with Beaker}
  spec.homepage      = "https://github.com/puppetlabs/beaker-i18n_helper"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'beaker', '>= 3.0.0'
  spec.add_development_dependency 'beaker-rspec'
  spec.add_development_dependency 'pry'
end
