require 'spec_helper'

describe UserApplication do
	# relations
	it { should embed_many :errors }

	it { should belong_to :user }

	# validations
	it { should validate_presence_of :name }
end
