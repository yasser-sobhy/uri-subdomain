# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "uri/subdomain"

Gem::Specification.new do |s|
  s.name        = "uri-subdomain"
  s.version     = URI::Subdomain::VERSION
  s.authors     = ["Jared"]
  s.email       = ["jared@deadlyicon.com"]
  s.homepage    = ""
  s.summary     = %q{add subdomain methods to URI::HTTP}
  s.description = %q{add subdomain methods to URI::HTTP}

  s.rubyforge_project = "uri-subdomain"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_development_dependency "rake"
end
