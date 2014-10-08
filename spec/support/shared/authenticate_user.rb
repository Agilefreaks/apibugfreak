shared_context :authenticate_user do
	let(:user) { User.new }

	before do
    allow(controller).to receive(:authenticate_user!).and_return(true)
    allow(controller).to receive(:authenticate!).and_return(true)
    allow(controller).to receive(:current_user).and_return(user)
	end
end