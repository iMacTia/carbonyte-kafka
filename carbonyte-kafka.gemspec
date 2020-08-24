# frozen_string_literal: true

require_relative 'lib/carbonyte/kafka/version'

Gem::Specification.new do |spec|
  spec.name = 'carbonyte-kafka'
  spec.version = Carbonyte::Kafka::VERSION
  spec.authors = ['iMacTia']
  spec.email = ['giuffrida.mattia@gmail.com']
  spec.homepage = 'https://github.com/iMacTia/carbonyte-kafka'
  spec.summary = 'Carbonyte library to produce and consume Kafka messages.'
  spec.description = 'Carbonyte library to produce and consume Kafka messages.'
  spec.license = 'MIT'
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.add_dependency 'karafka', '~> 1.3'
  spec.add_dependency 'request_store', '~> 1.5'

  spec.add_development_dependency 'inch', '~> 0.8'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.9'
  spec.add_development_dependency 'rubocop', '~> 0.89'
  spec.add_development_dependency 'rubocop-performance', '~> 1.5'
end
