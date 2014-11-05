class LocationsController < ApplicationController

		def index
			@locations = Location.last_created 10
		end

		def show
			@location = Location.find(params[:id])
			@visits = @location.visits
		rescue ActiveRecord::RecordNotFound
			render "Not_Found"
		end
	
end

