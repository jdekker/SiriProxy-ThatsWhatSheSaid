# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-thatswhatshesaid"
  s.version     = "0.0.1" 
  s.authors     = ["iamthegeek"]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = %q{A "That's what she said!" plugin.}
  s.description = %q{This is a "That's what she said" plugin that responds with "That's what she said" to appropriate queries. }

  s.rubyforge_project = "thatswhatshesaid"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
   s.add_runtime_dependency "url_escape"
end
