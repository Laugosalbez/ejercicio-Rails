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

