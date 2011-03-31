# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "psychedelic/version"

Gem::Specification.new do |s|
  s.name        = "psychedelic"
  s.version     = Psychedelic::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mr. Big Cat"]
  s.email       = ["miaout17 at gmail dot com"]
  s.homepage    = "http://miaout17.github.com/psychedelic/"
  s.summary     = %q{Awesome syntax colorizer in Ruby}
  s.description = %q{Awesome syntax colorizer in Ruby}

  s.rubyforge_project = "psychedelic"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
