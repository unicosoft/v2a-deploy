# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'v2a-deploy/version'

Gem::Specification.new do |gem|
  gem.name          = "v2a-deploy"
  gem.version       = V2A::Deploy::VERSION
  gem.authors       = ["Timo Schilling"]
  gem.email         = ["timo@schilling.io"]
  gem.description   = %q{Capistrano Setup that is used by http://www.v2a.net}
  gem.summary       = %q{Capistrano Setup that is used by http://www.v2a.net}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "capistrano", "~> 2.0"
  gem.add_dependency "capistrano_ssh"
  gem.add_dependency "capistrano_rails_console"
  gem.add_dependency "capistrano_mongo"
  gem.add_dependency "capistrano_colors"

  gem.add_development_dependency "rake"
end
