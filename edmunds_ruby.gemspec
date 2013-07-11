$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "edmunds_ruby/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "edmunds_ruby"
  s.version     = "0.1.0"
  s.authors     = ["JD Warren"]
  s.email       = ["jd@isotope11.com"]
  s.homepage    = "http://isotope11.com"
  s.summary     = "Edmunds auto API"
  s.description = "Ruby warapper for the Edmunds auto API"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "rest-client"
  s.add_dependency "crack"

end
