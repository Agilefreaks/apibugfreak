class UserApplicationsController < ApplicationController
	#noinspection RailsParamDefResolve
	before_action :authenticate_user!

	respond_to :html

	def index
		@user_applications = current_user.user_applications
		respond_with @user_applications
	end

	def show
		@user_application = current_user.find_user_application(params[:id])
    @user_applications = @user_application.application_errors.order_by_created_at_desc.page(params[:page])

		respond_with @user_application, @user_applications
	end

	def new
		@user_application = current_user.build_user_application
		respond_with @user_application
	end

	def create
		@user_application = current_user.create_user_application(user_application_params)

		if @user_application.valid?
			flash[:notice] = 'Application create.'
			redirect_to user_application_path(@user_application)
		else
			render :action => :new
		end
	end

	def destroy
		application = current_user.user_applications.find(params[:id])
		application.destroy

		flash[:notice] = 'Application was removed.'
		redirect_to :action => :index
	end

	private

	def user_application_params
		params.require(:user_application).permit(:name)
	end
end
