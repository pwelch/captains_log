source 'https://rubygems.org'

ruby '2.1.6'

gem 'rails', '4.2.4'
gem 'bootstrap-sass', '2.3.2.0'
gem 'will_paginate', '~> 3.0'
gem 'bootstrap-will_paginate'
gem 'devise'

group :development, :test do
  gem 'sqlite3', '1.3.8'
  gem 'pry'
end

group :test do
  gem 'rspec-rails', '3.2.1'
  gem 'shoulda-matchers'
  gem 'capybara', '2.5'
  gem 'selenium-webdriver', '2.45.0'
  gem 'factory_girl_rails'
  gem 'brakeman', :require => false # Should probably not be in Gemfile
  gem 'bundler-audit', :require => false
end

gem 'sass-rails', '5.0.4'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.1.0'
gem 'jquery-rails', '4.0.5'
gem 'turbolinks', '2.5.3'
gem 'jbuilder', '2.3.1'

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  gem 'pg', '0.17.0'
  gem 'rails_12factor', '0.0.2'
end
