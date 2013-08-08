class ApplicationError
  include Mongoid::Document
	include Mongoid::Timestamps

	field :stack_trace, type: String
  field :source, type: String
  field :message, type: String
  field :additional_data, type: Hash

	embedded_in :application

	validates_presence_of :message
end
