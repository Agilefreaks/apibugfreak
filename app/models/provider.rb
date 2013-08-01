class Provider
  include Mongoid::Document

  field :name, type: String
  field :uid, type: String
  field :auth, type: String
  field :email, type: String

	embedded_in :user
end
