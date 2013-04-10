$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "minitweet/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "minitweet"
  s.version     = Minitweet::VERSION
  s.authors     = ["Satish"]
  s.email       = ["gathole@gmail.com"]
  s.homepage    = "mintweet"
  s.summary     = "Summary of Minitweet."
  s.description = "Description of Minitweet."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
