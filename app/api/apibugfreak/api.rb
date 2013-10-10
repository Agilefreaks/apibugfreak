require 'grape'
require 'grape-swagger'

module Apibugfreak
	class API < Grape::API
		prefix 'api'
		format :json
		default_error_formatter :json

		rescue_from Mongoid::Errors::DocumentNotFound do |error|
			rack_response({error: {message: "We didn't find what we were looking for"}}.to_json, 404)
		end

		before do
			header['Access-Control-Allow-Origin'] = '*'
			header['Access-Control-Request-Method'] = '*'
		end

		helpers do
			def current_user
				@current_user ||= User.find_by(api_key: headers['Api-Key'])
			end

			def current_application
				@current_application ||= current_user.find_user_application(headers['Token'], :application_errors)
			end

			def authenticate!
				error!('401 Unauthorized', 401) unless current_user
				error!('404 Application not found', 404) unless current_application
			end
		end

		mount Resources::V1::ErrorsAPI => '/v1'

		add_swagger_documentation(
				base_path: "#{Rails.configuration.action_mailer.asset_host}/api",
				mount_path: '/doc',
				api_version: 'v1',
				hide_documentation_path: true
		)
	end
end
