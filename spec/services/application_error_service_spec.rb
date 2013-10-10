require 'spec_helper'

describe ApplicationErrorService do
  let(:user_application) { Fabricate(:user_application) }
  let(:service) { ApplicationErrorService.new(user_application) }

  describe :create_application_error do
    let(:values) {
      {
          :'message' => 'message',
          :'source' => 'source',
          :'stackTrace' => 'stackTrace',
          :'additionalData[API_LEVEL]' => 18,
          :'additionalData[OS]' => '4.2.2'
      }
    }

    it 'will insert a application error' do
      expect { service.create_application_error(values) }.to change { user_application.application_errors.count }.by(1)
    end
  end
end