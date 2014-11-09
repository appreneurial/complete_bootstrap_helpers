$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "complete_bootstrap_helpers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "complete_bootstrap_helpers"
  s.version     = CompleteBootstrapHelpers::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of CompleteBootstrapHelpers."
  s.description = "TODO: Description of CompleteBootstrapHelpers."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.7"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
end
