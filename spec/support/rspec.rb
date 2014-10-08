RSpec.configure do |config|
  # Set the default mocking library
  config.mock_with :rspec

  # Only run tests that have this filter, if it exists
  config.filter_run :debug => true

  # Run all the tests when all the tests are filtered
  config.run_all_when_everything_filtered = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

	# Run specs in random order to surface order dependencies. If you find an
	# order dependency and want to debug it, you can fix the order by providing
	# the seed, which is printed after each run.
	#     --seed 1234
	config.order = 'random'
end