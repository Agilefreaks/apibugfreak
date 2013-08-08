require 'spec_helper'

describe Resources::V1::ErrorsAPI do
  describe "POST '/v1/errors'" do
    let(:application) { UserApplication.new }
    let(:user) { mock_model(User, find_user_application: application) }

    before do
      User.stub_chain(find_by: user)
    end

    it 'will be ok' do
      #noinspection RubyStringKeysInHashInspection
      expect(application).to receive(:create_application_error).with(
                                 message: 'message',
                                 source: 'source',
                                 stack_trace: 'stackTrace',
                                 additional_data: {'API_LEVEL' => '18', 'OS' => '4.2.2'}
                             )

      post '/v1/api/errors', {
          :'message' => 'message',
          :'source' => 'source',
          :'stackTrace' => 'stackTrace',
          :'additionalData[API_LEVEL]' => 18,
          :'additionalData[OS]' => '4.2.2'
      },
           {'Api-Key' => '123ApiKey', :'Token' => '123token', 'App-Name' => 'Test'}

      expect(response.status).to eq 201
    end
  end
end