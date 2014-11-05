class Location < ActiveRecord::Base
	def self.last_created num
		order(created_at: :desc).limit(num)
	end

	has_many :visits
	validates :name, presence: true
	
end

