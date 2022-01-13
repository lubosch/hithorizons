# frozen_string_literal: true

require_relative 'lib/hithorizons/version'

Gem::Specification.new do |spec|
  spec.name          = 'hithorizons'
  spec.version       = Hithorizons::VERSION
  spec.authors       = ['Lubomir Vnenk']
  spec.email         = ['lubomir.vnenk@zoho.com']

  spec.summary       = 'Horizonts api integration'
  spec.description   = 'Horizonts api integration for get, search and search unstructured'
  spec.homepage      = 'https://github.com/lubosch/hithorizons'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.1')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = 'https://github.com/lubosch/hithorizons/blob/master/changelog.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 1'
  spec.add_dependency 'faraday_middleware', '~> 1'

  spec.add_development_dependency 'codecov', '~> 0.2'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.6'
  spec.add_development_dependency 'rubocop', '~> 1.7'
  spec.add_development_dependency 'rubocop-rspec', '~> 2'
  spec.add_development_dependency 'simplecov', '~> 0.21'
  spec.add_development_dependency 'webmock', '~> 3'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
