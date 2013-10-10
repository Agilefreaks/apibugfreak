module UserFinders
	extend ActiveSupport::Concern

	module ClassMethods
		def find_by_provider(email, provider)
			User.where('providers.email' => email, 'providers.name' => provider).first
		end
	end

	def find_user_application(token, without_fields = [])
		user_applications.without(without_fields).find(token)
	end

	def find_provider(uid, name)
		providers.where(:uid => uid, :name => name).first
	end
end
