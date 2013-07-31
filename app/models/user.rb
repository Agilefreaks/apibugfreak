class User
	include Mongoid::Document
	include UserFinders

	field :api_key, :type => String, :default => -> { SecureRandom.uuid }

	has_many :user_applications, :dependent => :destroy
end
