# -*- encoding: utf-8 -*-
require File.expand_path(File.join('..', 'lib', 'omniauth', 'youtube', 'version'), __FILE__)

Gem::Specification.new do |gem|
  gem.add_dependency 'omniauth', '>= 1.1.1'

  gem.authors       = ["Josh Ellithorpe", "Yury Korolev"]
  gem.email         = ["quest@mac.com"]
  gem.description   = %q{A YouTube strategy for OmniAuth 1.x}
  gem.summary       = %q{A YouTube strategy for OmniAuth 1.x}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {spec}/*`.split("\n")
  gem.name          = "omniauth-youtube"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::YouTube::VERSION

  # Nothing lower than omniauth-oauth2 1.1.1
  # http://www.rubysec.com/advisories/CVE-2012-6134/
  gem.add_runtime_dependency 'omniauth-oauth2', '>= 1.1.1'

  gem.add_development_dependency 'rspec', '>= 2.14.0'
  gem.add_development_dependency 'rake'
end
