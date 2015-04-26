class LandsController < ApplicationController
	def index
		@lands = Land.all
	end

	def comparison
		
	end

	def recommend

	end

	def get_data_from_api
		respond_to do |format|
			format.any {
				http = HTTPClient.new
				data = http.get "http://localhost:8081/recoland", "username" => current_user.name
				render json: data.body
			}
		end
		
	end
end
