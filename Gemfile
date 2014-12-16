source 'https://rubygems.org'
ruby '2.1.5'

#gem 'rubysl', '~> 2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
gem 'puma'

gem 'mongoid', '~> 4.0.0'

gem 'haml'
gem 'haml-rails'

gem 'foundation-rails'

gem 'cells'
gem 'simple_form', '~> 3.0.2'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 2.5.3'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.2'

gem 'grape'
gem 'grape-entity'
gem 'grape-swagger'

gem 'devise'
gem 'omniauth-google-oauth2'
gem 'omniauth-github'

gem 'newrelic_rpm'
gem 'newrelic_moped'
gem 'newrelic-grape'
gem 'kaminari'

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
	gem 'rspec-rails'
	gem 'rspec-mocks'
  gem 'rspec-spies'
  gem 'spring-commands-rspec'
  gem 'mongoid-rspec'
  gem 'fabrication'
  gem 'database_cleaner'
  gem 'spring'

  # deploy
  gem 'capistrano', '~> 3.2', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rvm', require: false
  gem 'capistrano3-puma', require: false
end

group :test do
	gem 'shoulda'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
