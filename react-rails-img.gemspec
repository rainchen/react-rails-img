# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'react/rails/img/version'

Gem::Specification.new do |spec|
  spec.name          = "react-rails-img"
  spec.version       = React::Rails::Img::VERSION
  spec.authors       = ["RainChen"]
  spec.email         = ["hirainchen@gmail.com"]

  spec.summary       = %q{simple image helpers for the rails project using react}
  spec.description   = %q{simple image helpers for the rails project using react, make it easily just like using the <img> tag}
  spec.homepage      = "https://github.com/rainchen/react-rails-img"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "react-rails"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"

  # for testing
  spec.add_development_dependency "rails", "~> 4.2.7"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec-rails", "~> 3.5"
  spec.add_development_dependency "capybara-webkit"
  spec.add_development_dependency "selenium-webdriver"
  spec.add_development_dependency "launchy"
end
