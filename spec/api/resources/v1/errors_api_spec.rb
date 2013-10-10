require 'spec_helper'

describe Resources::V1::ErrorsAPI do
  describe "POST '/v1/errors'" do
    let(:application) { Fabricate(:user_application, id: '123Token') }
    let!(:user) { Fabricate(:user, api_key: '123ApiKey') }

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
      user.user_applications.push(application)
    end

    it 'will be ok' do
      expect_any_instance_of(ApplicationErrorService).to receive(:create_application_error)

      post '/v1/api/errors', params, {'Api-Key' => '123ApiKey', :'Token' => '123Token' }

      expect(response.status).to eq 201
    end
  end
end