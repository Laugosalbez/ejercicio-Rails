class Location < ActiveRecord::Base
	def self.last_created num
		order(created_at: :desc).limit(num)
	end
end

