source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'simple_form'

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :production do
  gem 'pg'
end

group :test, :development do
  gem 'sqlite3'
  gem 'turn', :require => false # Pretty printed test output
  gem 'rspec-rails'
  gem 'capybara' # for testing what the user sees
  gem 'spork', '~> 0.9.0.rc' # helps speeding up the tests
  gem 'shoulda' # for validation matches in rspec
  gem 'factory_girl' # the cool way of writing fixtures
  gem 'launchy' # for launching web pages within capybara
  gem 'database_cleaner'
  gem 'simplecov'
end
