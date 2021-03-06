class Users::RegistrationsController < Devise::RegistrationsController
  def update
    @user = User.find(current_user.id)

    successfully_updated = if needs_password?(@user, params)
                             @user.update_with_password(user_params)
                           else
                             # remove the virtual current_password attribute update_without_password
                             # doesn't know how to ignore it
                             params[:user].delete(:current_password)
                             @user.update_without_password(user_params)
                           end

    if successfully_updated
      set_flash_message :notice, :updated
      # Sign in the user bypassing validation in case his password changed
      sign_in(@user, :bypass => true)
      redirect_to after_update_path_for(@user)
    else
      #noinspection RailsParamDefResolve
      render :action => :edit
    end
  end

  private

  def needs_password?(user, params)
    user.email != params[:user][:email] || params[:user][:password].present?
  end

  def sign_up_params
    params.require(:user).permit(*permit_params)
  end

  def user_params
    params.require(:user).permit(*permit_params.append(:current_password))
  end

  def permit_params
    [:email, :first_name, :last_name, :password, :password_confirmation]
  end
end