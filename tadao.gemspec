# frozen_string_literal: true

$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "tadao/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "tadao"
  spec.version     = Tadao::VERSION
  spec.authors     = "Team IIGETHR"
  spec.email       = "talktous@iigethr.com"
  spec.homepage    = "https://www.iigethr.com"
  spec.summary     = "A Minimal and Lightweight Design System."
  spec.license     = "MIT"
  spec.files       = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Production
  spec.add_dependency "rails", "~> 6.0.0.rc1"
  spec.add_dependency "autoprefixer-rails"
  spec.add_dependency "inline_svg"
  spec.add_dependency "sassc-rails"
  spec.add_dependency "sprockets"

  # Development
  spec.add_development_dependency "database_cleaner"
  spec.add_development_dependency "factory_bot_rails"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "shoulda-matchers"
  spec.add_development_dependency "sqlite3"
end
