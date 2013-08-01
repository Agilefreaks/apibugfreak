require 'spec_helper'

describe ApplicationError do
	it { should be_embedded_in :application }

	it { should validate_presence_of :message }
end
