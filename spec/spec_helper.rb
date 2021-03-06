ENV['RAILS_ENV'] ||= 'test'

require 'rubygems'

require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
require 'rspec-spies'

# Require all of the RSpec Support libraries
Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }
