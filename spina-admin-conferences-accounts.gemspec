# frozen_string_literal: true

require_relative 'lib/spina/admin/conferences/accounts/version'

Gem::Specification.new do |spec|
  spec.name        = 'spina-admin-conferences-accounts'
  spec.version     = Spina::Admin::Conferences::Accounts::VERSION
  spec.authors     = ['Louis Van Steene']
  spec.email       = ['louis@lvs.me.uk']
  spec.homepage    = 'https://github.com/louis-vs/spina-admin-conferences-accounts'
  spec.summary     = 'Public user account plugin for Spina.'
  spec.description = 'Implements devise accounts into SpinaCMS.'
  spec.license     = 'MIT'
  spec.required_ruby_version = '~> 2.7'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/louis-vs/spina-admin-conferences-accounts'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'babel-transpiler', '~> 0.7'
  spec.add_dependency 'devise', '~> 4.8'
  spec.add_dependency 'rails', '~> 6.1'
  spec.add_dependency 'rails-i18n', '~> 6.0'
  spec.add_dependency 'spina', '~> 2.0.0'

  spec.add_development_dependency 'capybara', '~> 3.35'
  spec.add_development_dependency 'codecov', '~> 0.4'
  spec.add_development_dependency 'image_processing', '~> 1.2'
  spec.add_development_dependency 'minitest-rails', '~> 6.1'
  spec.add_development_dependency 'minitest-reporters', '~> 1.4'
  spec.add_development_dependency 'pg'
  spec.add_development_dependency 'puma', '~> 5.0'
  spec.add_development_dependency 'rubocop', '~> 1.8'
  spec.add_development_dependency 'rubocop-performance', '~> 1.8'
  spec.add_development_dependency 'rubocop-rails', '~> 2.8'
  spec.add_development_dependency 'selenium-webdriver', '~> 4.2'
  spec.add_development_dependency 'simplecov', '~> 0.21'
  spec.add_development_dependency 'yard', '~> 0.9'
end
