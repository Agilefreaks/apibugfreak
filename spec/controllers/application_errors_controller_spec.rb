require 'spec_helper'

describe ApplicationErrorsController do
	include_context 'authenticate user'

	let(:user_application) { UserApplication.new }
	let(:application_error) { user_application.application_errors.build }

	before do
		user.stub_chain(:find_user_application).and_return(user_application)
		user_application.stub_chain(:find_application_error).and_return(application_error)
	end
end
