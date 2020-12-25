# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jetrockets/standard/version'

Gem::Specification.new do |spec|
  spec.name = 'jetrockets-standard'
  spec.version = Jetrockets::Standard::VERSION
  spec.authors = ['Igor Alexandrov']
  spec.email = ['igor.alexandrov@gmail.com']

  spec.summary = 'Standard RuboCop configuration for JetRockets with cookies.'
  spec.homepage = 'https://github.com/jetrockets/jetrockets-standard'
  spec.license = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop-rails'
  spec.add_dependency 'rubocop-rspec'
  spec.add_dependency 'standard', '~> 0.10.2'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.9'
end
