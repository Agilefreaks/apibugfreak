module Apibugfreak
	class Resources::V1::ErrorsAPI < Grape::API
		resources :errors do
			desc 'Create a error'
			post do
				authenticate!

        ApplicationErrorService.new(@current_application).create_application_error(params)
			end
		end
	end
end