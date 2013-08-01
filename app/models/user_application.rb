class UserApplication
  include Mongoid::Document
	include ErrorBuilder

  field :name, type: String, default: ''

	embeds_many :errors
	belongs_to :user

	index 'user_id' => 1

	validates_presence_of :name
end
