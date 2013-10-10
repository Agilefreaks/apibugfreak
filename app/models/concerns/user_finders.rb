module UserFinders
	extend ActiveSupport::Concern

	module ClassMethods
		def find_by_provider(email, provider)
			User.where('providers.email' => email, 'providers.name' => provider).first
		end
	end

	def find_user_application(token)
		user_applications.without(:application_errors).find(token)
	end

	def find_provider(uid, name)
		providers.where(:uid => uid, :name => name).first
	end
end
