require 'grape'
require 'grape-swagger'

module Apibugfreak
	class API < Grape::API
		prefix 'api'
		version 'v1', :using => :path, vendor: 'Apibugfreak', cascade: false
		format :json
		default_error_formatter :json

		rescue_from Mongoid::Errors::DocumentNotFound do |error|
			rack_response({error: {message: "We didn't find what we were looking for"}}.to_json, 404)
		end

		before do
			header['Access-Control-Allow-Origin'] = '*'
			header['Access-Control-Request-Method'] = '*'
		end

		#mount Resources::UsersAPI

		add_swagger_documentation(
				base_path: "#{Rails.configuration.action_mailer.asset_host}/api",
				mount_path: '/doc',
				api_version: 'v1',
				hide_documentation_path: true
		)
	end
end
