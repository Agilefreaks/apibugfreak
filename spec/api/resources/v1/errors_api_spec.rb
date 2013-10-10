require 'spec_helper'

describe Resources::V1::ErrorsAPI do
  describe "POST '/v1/errors'" do
    let(:application) { UserApplication.new }
    let(:user) { mock_model(User, find_user_application: application) }

    let(:params) {
      {
          :'message' => 'message',
          :'source' => 'source',
          :'stackTrace' => 'stackTrace',
          :'additionalData[API_LEVEL]' => 18,
          :'additionalData[OS]' => '4.2.2'
      }
    }

    before do
      User.stub_chain(find_by: user)
    end

    it 'will be ok' do
      expect_any_instance_of(ApplicationErrorService).to receive(:create_application_error)

      post '/v1/api/errors', params, {'Api-Key' => '123ApiKey', :'Token' => '123token', 'App-Name' => 'Test'}

      expect(response.status).to eq 201
    end
  end
end