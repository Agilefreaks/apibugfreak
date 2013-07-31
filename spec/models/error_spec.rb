require 'spec_helper'

describe Error do
	it { should be_embedded_in :application }

	it { should validate_presence_of :message }
end
