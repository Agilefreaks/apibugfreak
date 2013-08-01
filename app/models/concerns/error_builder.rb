module ErrorBuilder
	extend ActiveSupport::Concern

	def create_error(params)
		errors.create!(params)
	end
end