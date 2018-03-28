$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "remote_manifest/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "remote_manifest"
  s.version     = RemoteManifest::VERSION
  s.authors     = ["Justin Chapman"]
  s.email       = ["justin@myeventnation.com"]
  s.homepage    = "https://github.com/event-nation"
  s.summary     = "Load sprockets manifest file from a remote server"
  s.description = "Load sprockets manifest file from a remote server"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.2.8"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry"
end
