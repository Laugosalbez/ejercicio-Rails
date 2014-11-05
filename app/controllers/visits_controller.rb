class VisitsController < ApplicationController
	def index
    	@location = Location.find(params[:location_id])
    	@visits = @location.visits
  	end
end