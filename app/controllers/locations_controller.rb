class LocationsController < ApplicationController

		def index
			@locations = Location.last_created 10
		end

		def show
			@oneLocation = Location.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			render "Not_Found"
		end
	
end

class ApplicationController < ActionController :: Base
	protect_from_forgery with: :exception

	rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
private
	def record_not_found
		render status: 404, file: "#{Rails.root}/public/404"
	end
