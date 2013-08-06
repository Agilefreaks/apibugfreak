require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the PagesHelper. For example:
#
# describe PagesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe PagesHelper do
  describe :api_key do
    subject { api_key(current_user) }

    context 'when current_user is nil' do
      let(:current_user) { nil }

      it { should == '[apiKey]' }
    end

    context 'when current_user is not nil' do
      let(:current_user) { mock_model(User, api_key: '42') }

      it { should == '42' }
    end
  end
end
