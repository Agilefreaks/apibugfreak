module ApplicationErrorBuilder
	extend ActiveSupport::Concern

	def create_application_error(params)
		application_errors.create!(params)
	end
end