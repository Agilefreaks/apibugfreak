class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
	def github
		callback(request.env['omniauth.auth'], current_user)
	end

  def google_oauth2
		callback(request.env['omniauth.auth'], current_user)
  end

  private

	def callback(request, user)
		# You need to implement the method below in your model (e.g. app/models/user.rb)
		@user = find_or_create(request, user)

		if @user.persisted?
			flash[:notice] = I18n.t("devise.omniauth_callbacks.success", :kind => request.provider)
			sign_in_and_redirect @user, :event => :authentication
		else
			redirect_to root_url
		end
	end

  def find_or_create(auth, signed_in_resource)
    user = signed_in_resource ||
        User.find_by_provider(auth.info.email, auth.provider) ||
        User.where(:email => auth.info.email).first

    UserFactory.from_social(auth, user)
  end
end