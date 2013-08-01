module UserApplicationFinders
	extend ActiveSupport::Concern

	def find_application_error(id)
		application_errors.find(id)
	end
end