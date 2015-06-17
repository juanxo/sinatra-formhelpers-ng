# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sinatra/form_helpers/version'

Gem::Specification.new do |gem|
  gem.name = "sinatra-formhelpers-ng"
  gem.version = Sinatra::FormHelpers::VERSION
  gem.date = Date.today.to_s

  gem.summary = "Form helpers for Sinatra"
  gem.description = "Simple, lightweight, Rails-like, form helpers for Sinatra."

  gem.authors = ["twilson63", "Nate Wiger", "Cymen Vig", "Laurens Duijvesteijn"]
  gem.email = "l.duijvesteijn@gmail.com"
  gem.homepage = "https://github.com/duijf/sinatra-formhelpers-ng"

  gem.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }

  gem.platform = Gem::Platform::RUBY
  gem.require_paths = ["lib"]
  gem.rubygems_version = "2.4.5"

  gem.add_development_dependency "bundler", "~> 1.6"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "sinatra", "~> 1.4"
  gem.add_development_dependency "rack-test", "~> 0.6"
  gem.add_development_dependency "codeclimate-test-reporter", ">= 0"
  gem.add_development_dependency "yard", "~> 0.8"
  gem.add_development_dependency "rspec", "~> 3.3"
end

