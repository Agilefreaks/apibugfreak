class UserApplicationsController < ApplicationController
	#noinspection RailsParamDefResolve
	before_action :authenticate_user!

	respond_to :html

  def index
	end

	def new
	end

	def create
		redirect_to root_path
	end
end
