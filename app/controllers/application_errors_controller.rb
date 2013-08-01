class ApplicationErrorsController < ApplicationController
	#noinspection RailsParamDefResolve
	before_action :authenticate_user!
	before_action :get_user_application
	before_action :get_application_error

	respond_to :html

	def show
		respond_with @application_error
	end

	def destroy
		@application_error.destroy
		redirect_to user_application_path(@user_application)
	end

	private

	def get_user_application
		@user_application = current_user.find_user_application(params[:user_application_id])
	end

	def get_application_error
		@application_error = @user_application.find_application_error(params[:id])
	end
end
