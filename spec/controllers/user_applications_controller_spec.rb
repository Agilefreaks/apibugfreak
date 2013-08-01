require 'spec_helper'

describe UserApplicationsController do
	let(:user) { User.new }

	before do
		controller.stub(authenticate_user!: true)
		controller.stub(current_user: user)
	end

	describe "GET 'index'" do
		before do
			get :new
		end

		it { should respond_with 200 }
	end

	describe "POST 'create'" do
		it 'will create a new application' do
			expect(user).to receive(:create_application).with({name: 'new app'})
			post :create, user_application: {name: 'new app'}
		end
	end
end
