require 'rubygems'

SPEC = Gem::Specification.new do |s|
  s.name = "moat"
  s.version = "0.0.1"
  s.author = "Bryan Woods"
  s.email = "bryanwoods4e@gmail.com"
  s.platform = Gem::Platform::RUBY
  s.summary = "Brain-dead simple password storage. Improved."
  s.files = Dir.glob("**/*")
  s.executables << "moat"
  s.require_path = "lib"
  s.has_rdoc = false
end
