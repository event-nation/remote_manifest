$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "remote_manifest/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "remote_manifest"
  s.version     = RemoteManifest::VERSION
  s.authors     = ["Justin Chapman"]
  s.email       = ["commonmodestudio@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RemoteManifest."
  s.description = "TODO: Description of RemoteManifest."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.4"

  s.add_development_dependency "sqlite3"
end
