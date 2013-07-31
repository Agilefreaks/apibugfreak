require 'rubygems'
require 'spork'

Spork.prefork do
	unless ENV['DRB']
		require 'simplecov'
		SimpleCov.start 'rails'
	end

	ENV['RAILS_ENV'] ||= 'test'
	require File.expand_path('../../config/environment', __FILE__)
	require 'rspec/rails'
	require 'rspec/autorun'
	require 'rspec-spies'

	# Require all of the RSpec Support libraries
	Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }
end

Spork.each_run do
	if ENV['DRB']
		require 'simplecov'
		SimpleCov.start 'rails'
	end
end