source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

ruby '2.2.0'

group :production do
  #Use PostGres Gem for Heroku compatibility
  gem 'pg'
  gem 'rails_12factor'
end
group :development do
  gem 'sqlite3'
  #Use Better Errors Gem to help with debugging
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do

  gem 'pry-rails'
  gem 'pry-nav'
  gem 'pry-stack_explorer'

  # Use Faker Gem to generate fake data for the database
  gem 'faker'

  # Use Capybara Gem for more testing
  gem 'capybara'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 1.3.6'

  #Use RSpec Gem to help with testing
  gem 'rspec-rails', '~> 3.0'
end

# Use Redcarpet Gem for markdown
gem 'redcarpet'
# Use will_paginate Gem for pagination
gem 'will_paginate', '~> 3.0.5'
# Use Stripe Gem for payment processing
gem 'stripe'
# Use Pundit Gem for authorization
gem 'pundit'
# Use Figaro Gem for Environmental Variables
gem 'figaro', '1.0'
# Adds devise authentication
gem 'devise'
# Adds bootstrap
gem 'bootstrap-sass'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# SimpleCov Gem is used to see how much of your code is touch by the spec tests
gem 'simplecov', :require => false, :group => :test



# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Unicorn as the app server
# gem 'unicorn'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


