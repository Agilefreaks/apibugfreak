module UserFinders
	extend ActiveSupport::Concern

	def find_user_application(token)
		user_applications.find(token)
	end
end
