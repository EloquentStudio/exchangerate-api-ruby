
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "exchangerate/version"

Gem::Specification.new do |spec|
  spec.name          = "exchangerate-api"
  spec.version       = Exchangerate::VERSION
  spec.authors       = ["Jiren Patel"]
  spec.email         = ["jiren@eloquent.studio"]

  spec.summary       = "Currency Exchange Rates API Client"
  spec.description   = "Currencies Exchange rates api client"
  spec.homepage      = "https://github.com/EloquentStudio/exchangerate-api-ruby"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_dependency "json", "~> 2.2"
  spec.add_dependency "faraday", "~> 0.17.0"
  spec.add_dependency "faraday_middleware", "~> 0.13.1"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.12.2"
  spec.add_development_dependency "minitest-focus", "~> 1.1.2"
  spec.add_development_dependency "minitest-rg", "~> 5.2"
  spec.add_development_dependency "rubocop", "~> 0.75.0"
  spec.add_development_dependency "simplecov", "~> 0.17.1"
  spec.add_development_dependency "yard", "~> 0.9.20"
end
