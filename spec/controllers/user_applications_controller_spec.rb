require 'spec_helper'

describe UserApplicationsController do
	include_context :authenticate_user

	describe "GET 'index'" do
    before do
      get :new
    end

		it { is_expected.to respond_with 200 }
	end

	describe "POST 'create'" do
		it 'will create a new application' do
			#noinspection RubyStringKeysInHashInspection
			expect(user).to receive(:create_user_application).with({'name' => 'new app'}).and_return(UserApplication.new)
			post :create, user_application: {name: 'new app'}
		end
	end

	describe "GET 'index'" do
    it 'will assign user applications' do
      get :index
      expect(assigns(:user_applications)).not_to be_nil
    end
	end

	describe "GET 'show'" do
		let(:user_application) { UserApplication.new }

    it 'will set user_application' do
      allow(user).to receive(:find_user_application).and_return(user_application)
      get :show, id: '123'
      expect(assigns(:user_application)).to eq user_application
    end
	end
end
