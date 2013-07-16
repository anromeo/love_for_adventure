source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '3.2.13'

gem 'pg', group: :production

gem 'delayed_paperclip', :git => "https://github.com/jrgifford/delayed_paperclip"
gem 'aws-sdk'
gem 'delayed_job_active_record'
gem 'foreman'
gem 'rmagick'
gem 'paperclip-aws'
gem 'devise', '2.1.1'
gem 'cancan', '1.6.7'
gem 'fastimage'
gem 'fakeweb'
gem 'devise_invitable'
gem 'thin'
gem 'simple_form'

group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-fileupload-rails'
  gem 'jquery-ui-rails'
end

gem 'jquery-rails'

group :development, :test do
  gem 'rspec-rails', '~> 2.0'
  gem 'shoulda-matchers', '~> 2.1.0'
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-doc'
  gem 'binding_of_caller'
  gem 'dotenv-rails'
  gem 'sqlite3'
end

group :development do
  gem 'better_errors'
  gem 'meta_request'
end

group :test do
  gem 'capybara', '~> 2.1.0'
  gem 'capybara-webkit', '~> 1.0.0'
  gem 'database_cleaner', '~> 1.0.1'
  gem 'launchy'
  gem 'simplecov', :require => false
  gem 'factory_girl_rails', '~> 4.0'
  gem 'email_spec', '1.2.1'
end