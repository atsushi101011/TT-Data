source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'
gem 'rails', '~> 6.0.3', '>= 6.0.3.4'

gem 'mysql2', '>= 0.4.4'
gem 'puma', '~> 4.1'

# Assets
gem 'bootstrap'
gem 'jquery-rails'
gem 'font-awesome-sass'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'bootsnap', '>= 1.4.2', require: false

gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'slim-rails'
gem 'ransack'
gem 'sorcery', '0.14.0'

gem 'pry-byebug'
gem 'rails-i18n'

group :development, :test do
  # Debugger
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'better_errors'
  gem 'binding_of_caller'

  # Test
  gem 'rspec-rails'
  gem 'rspec_junit_formatter'
  gem 'factory_bot_rails'
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-checkstyle_formatter'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
