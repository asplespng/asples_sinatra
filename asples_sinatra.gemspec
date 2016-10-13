# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'asples_sinatra/version'

Gem::Specification.new do |spec|
  spec.name          = "asples_sinatra"
  spec.version       = AsplesSinatra::VERSION
  spec.authors       = ["Per Evensen"]
  spec.email         = ["per.evensen@gmail.com"]

  spec.summary       = %q{Helpers for base sinatra app}
  spec.description   = %q{Currently a helper for generating bootstrap formatted input fields for ActiveRecord objects.}
  spec.homepage      = "https://github.com/asplespng/asples_sinatra"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  # spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files         = ['lib/asples_sinatra.rb', 'lib/asples_sinatra/helpers.rb', 'lib/asples_sinatra/sinatra.rb', 'lib/asples_sinatra/version.rb', 'lib/asples_sinatra/templates/input.haml']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 11.2"
  spec.add_development_dependency "rspec", '~> 3.5'

  spec.add_dependency "sinatra", "~> 1.4"
  spec.add_dependency  "haml", "~> 4.0"
  spec.add_dependency  "activesupport", "~> 4.0"
end
