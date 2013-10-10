class ApplicationError
  include Mongoid::Document
	include Mongoid::Timestamps

  scope :order_by_created_at_desc, -> { desc(:created_at) }

	field :stack_trace, type: String
  field :source, type: String
  field :message, type: String
  field :additional_data, type: Hash

	embedded_in :application

	validates_presence_of :message
end
