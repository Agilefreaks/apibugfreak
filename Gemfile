source 'https://rubygems.org'
ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
gem 'puma'

gem 'mongoid', '~> 4.0.0', github: 'mongoid/mongoid'

gem 'newrelic_rpm'

gem 'haml'
gem 'haml-rails'

gem 'zurb-foundation', '~> 4.3.1'

gem 'cells'
gem 'simple_form', '~> 3.0.0.rc'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'grape'
gem 'grape-entity'
gem 'grape-swagger'

gem 'devise'
gem 'omniauth-google-oauth2'
gem 'omniauth-github'

gem 'newrelic_rpm'

gem 'rack-ssl-enforcer'

# deploy
gem 'capistrano'
gem 'rvm-capistrano'
gem 'capistrano-puma', require: false

group :production do
	gem 'rails_12factor'
end

group :doc do
	# bundle exec rake doc:rails generates the API under doc/api.
	gem 'sdoc', require: false
end

group :development, :test do
	gem 'awesome_print'
	gem 'rb-inotify', '~> 0.9'
	gem 'rspec-rails', '~> 2.0'
	gem 'rspec-spies'
	gem 'mongoid-rspec'
	gem 'guard-rspec'
	gem 'guard-spork'
	gem 'spork-rails', github: 'sporkrb/spork-rails'
end

group :test do
	gem 'database_cleaner'
	gem 'shoulda'
	gem 'simplecov'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
