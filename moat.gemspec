require 'rubygems'

SPEC = Gem::Specification.new do |s|
  s.name = "moat"
  s.version = "0.0.3"
  s.author = "Bryan Woods"
  s.email = "bryanwoods4e@gmail.com"
  s.platform = Gem::Platform::RUBY
  s.description = "Brain-dead simple password storage. Improved."
  s.summary = "Brain-dead simple password storage. Improved."
  s.rubyforge_project = "moat"
  s.homepage = "http://github.com/bryanwoods/moat"
  s.files = Dir.glob("**/*")
  s.executables << "moat"
  s.require_path = "lib"
  s.has_rdoc = false
end
