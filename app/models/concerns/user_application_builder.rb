module UserApplicationBuilder
	extend ActiveSupport::Concern

	def create_user_application(params)
		user_applications.create(params)
	end

	def build_user_application
		user_applications.build
	end
end