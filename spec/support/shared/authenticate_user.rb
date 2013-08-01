shared_context 'authenticate user' do
	let(:user) { User.new }

	before do
		controller.stub(authenticate_user!: true)
		controller.stub(current_user: user)
	end
end