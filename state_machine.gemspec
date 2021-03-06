$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'state_machine/version'

Gem::Specification.new do |s|
  s.name              = "state_machine"
  s.version           = StateMachine::VERSION
  s.authors           = ["Gorav Bhootra, Aaron Pfeifer"]
  s.email             = "email@gorav.in"
  s.homepage          = "http://solutionize.in"
  s.description       = "Adds support for creating state machines for attributes on any Ruby class"
  s.summary           = "State machines for attributes"
  s.require_paths     = ["lib"]
  ignores             = File.read(".gitignore").split.map {|i| i.sub(/\/$/, "/*").sub(/^[^\/]/, "**/\\0")}
  s.files             = (Dir[".*"] + Dir["**/*"]).select {|f| File.file?(f) && !ignores.any? {|i| File.fnmatch(i, "/#{f}")}}
  s.test_files        = s.files.grep(/^test\//)
  s.rdoc_options      = %w(--line-numbers --inline-source --title state_machine --main README.md)
  s.extra_rdoc_files  = %w(README.md CHANGELOG.md LICENSE)
  s.license           = 'MIT'
  s.required_ruby_version = '>= 1.9.3'

  s.add_development_dependency 'bundler', '>= 1.7.6'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest', '>= 5.4'
end
