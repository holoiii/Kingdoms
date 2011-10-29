source 'http://rubygems.org'

gem 'rails', '3.1.0'
gem 'heroku'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

gem 'jquery-rails'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'


gem 'authlogic'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'capybara'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'minitest'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.4'
end