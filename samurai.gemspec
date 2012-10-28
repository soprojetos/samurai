$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samurai"
  s.version     = Samurai::VERSION
  s.authors     = ["Nando Sousa"]
  s.email       = ["nandosousafr@gmail.com"]
  s.homepage    = "nandosousa.blog.br"
  s.summary     = "Seo Helper"
  s.description = "Scratching my own itch"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.8"
  # s.add_dependency "jquery-rails"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "sqlite3"
end
