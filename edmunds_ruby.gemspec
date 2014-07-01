$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "edmunds_ruby"
  s.version     = "2.0.0"
  s.authors     = ["JD Warren"]
  s.email       = ["johndavid400@gmail.com"]
  s.homepage    = "https://github.com/johndavid400/edmunds_ruby"
  s.summary     = "Edmunds auto API"
  s.description = "Ruby warapper for the Edmunds auto API - Includes V2 of the api, but also backwards compatible with V1"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rest-client"

end
