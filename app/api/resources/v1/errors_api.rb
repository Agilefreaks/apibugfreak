module Apibugfreak
	class Resources::V1::ErrorsAPI < Grape::API
		resources :errors do
			desc 'Create a error'
			post do
				authenticate!
				current_application.create_application_error(message: params[:message], source: params[:source], stack_trace: params[:stackTrace])
			end
		end
	end
end