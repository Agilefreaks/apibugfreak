module Apibugfreak
	class Resources::V1::ErrorsAPI < Grape::API
		resources :errors do
			desc 'Create a error', {
          headers: {
              'Api-Key' => {
                  description: 'The api key.',
                  required: true
              },
              'Token' => {
                  description: 'The application token.',
                  required: true
              }
          }
      }
      params do
        optional :message, type: String
      end
			post do
				authenticate!
        ApplicationErrorService.new(@current_application).create_application_error(params)
			end
		end
	end
end