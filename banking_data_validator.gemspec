lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "banking_data_validator/version"

Gem::Specification.new do |spec|
  spec.name          = "banking_data_validator"
  spec.version       = BankingDataValidator::VERSION
  spec.authors       = ["Americo Duarte"]
  spec.email         = ["americodls@gmail.com"]
  spec.summary       = %q{An implementation of ActiveModel::Validator for bank accounts.}
  spec.description   = spec.summary
  spec.homepage      = "http://www.bioritmo.com.br"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "mutant-rspec", "~> 0.7"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.4.6"

  spec.add_runtime_dependency "activemodel", ">= 3.0"
end
