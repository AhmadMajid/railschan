source 'http://rubygems.org'

gem 'rails', '3.1.0.rc5'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'bson_ext'
gem 'mongoid'

gem 'haml'

gem 'carrierwave', '= 0.5.4'
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid', :git => 'git://github.com/jnicklas/carrierwave-mongoid.git'
gem 'rmagick'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "~> 3.1.0.rc"
  gem 'coffee-rails', "~> 3.1.0.rc"
  gem 'uglifier'
  gem 'compass', :git => 'git://github.com/chriseppstein/compass.git', :branch => 'rails31'
  gem 'rails-backbone'
end

gem 'jquery-rails'

# Use unicorn as the web server
gem 'unicorn'

group :development do
  gem 'haml-rails'
end

group :development, :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'capybara'
  gem 'cucumber'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'spork', '~> 0.9.0.rc'
  gem 'webrat'
  gem 'factory_girl_rails'
  gem 'autotest'
  gem 'mongoid-rspec'
end

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

