require 'spec_helper'

describe UserApplicationsController do
	include_context 'authenticate user'

	describe "GET 'index'" do
		before do
			get :new
		end

		it { should respond_with 200 }
	end

	describe "POST 'create'" do
		it 'will create a new application' do
			#noinspection RubyStringKeysInHashInspection
			expect(user).to receive(:create_user_application).with({'name' => 'new app'}).and_return(UserApplication.new)
			post :create, user_application: {name: 'new app'}
		end
	end

	describe "GET 'index'" do
		before do
			get :index
		end

		it { assigns(:user_applications).should_not be_nil }
	end

	describe "GET 'show'" do
		let(:user_application) { UserApplication.new }

		before do
			user.stub_chain(:find_user_application).and_return(user_application)
			get :show, id: '123'
		end

		it { assigns(:user_application).should_not be_nil }
	end
end
