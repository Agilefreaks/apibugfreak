class UserApplication
  include Mongoid::Document
	include Mongoid::Timestamps
	include ApplicationErrorBuilder
	include UserApplicationFinders

  field :name, type: String, default: ''

	embeds_many :application_errors
	belongs_to :user

	index 'user_id' => 1

	validates_presence_of :name
end
