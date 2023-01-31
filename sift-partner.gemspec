# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sift-partner/version"

Gem::Specification.new do |s|
  s.name        = "sift-partner"
  s.version     = SiftPartner::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Aaron Beppu"]
  s.email       = ["support@siftscience.com"]
  s.homepage    = "http://siftscience.com"
  s.summary     = %q{Sift Science Ruby Partner API Gem}
  s.description = %q{Sift Science Ruby Partner API. Please see http://siftscience.com for more details.}

  s.rubyforge_project = "sift-partner"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Gems that must be intalled for sift to compile and build
  s.add_development_dependency "rspec", "~> 2.0"
  s.add_development_dependency "webmock", "~>  1.0"
  s.add_development_dependency("rake", "~> 11.0")

  # Gems that must be intalled for sift to work
  s.add_dependency "httparty", ">= 0.13.1", "< 0.22.0"
  s.add_dependency "multi_json", "~> 1.0"
  s.add_dependency "sift", "~> 1.1.7"
end
