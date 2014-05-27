$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "edmunds_ruby"
  s.version     = "1.0.2"
  s.authors     = ["JD Warren"]
  s.email       = ["jd@isotope11.com"]
  s.homepage    = "https://github.com/johndavid400/edmunds_ruby"
  s.summary     = "Edmunds auto API"
  s.description = "Ruby warapper for the Edmunds auto API"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "rest-client"
  s.add_dependency "crack"

end
