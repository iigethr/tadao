# frozen_string_literal: true

# Rubygems
source "https://rubygems.org"

# Github
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gemspec

# Ruby version
ruby "2.6.2"

group :development, :test do
  # Haml (HTML Abstraction Markup Language) is a layer on top of HTML or XML.
  gem "haml", "~> 5.1"
  gem "haml-rails", "~> 2.0"
  # Use SCSS for stylesheets
  gem "sassc-rails", "~> 2.1"

  # A library for generating fake data such as names, addresses, and phone numbers.
  gem "faker", github: "stympy/faker", branch: "master"

  # Continuous Integration
  gem "codeclimate-test-reporter", "~> 1.0", ">= 1.0.9"
  gem "travis", "~> 1.8", ">= 1.8.10"
end

group :test do
  # Code coverage for Ruby 1.9+ with a powerful configuration library
  # and automatic merging of coverage across test suites.
  gem "simplecov", require: false
end

# Linters
gem "coffeelint", require: false
gem "haml_lint", require: false
gem "reek", require: false
gem "rubocop", require: false
gem "rubocop-performance", require: false
gem "scss_lint", require: false
