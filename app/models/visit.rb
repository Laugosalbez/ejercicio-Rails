class Visit < ActiveRecord::Base
	belongs_to :location
	validates :from_date, presence: true
	validates :name, length:{maximum:30}
	validates :city, presence: true
	validates :to_date, presence: true
	validates :user_name, presence: true

	validates_associated :location

	validate :from_date_is_before_to_date
		def from_date_is_before_to_date
		 if from_date.to_i > to_date.to_i
		 	errors.add(:from_date, "can't be after to date")
		 end
	end	  

	def self.last_created(limit)
		order(created_at :desc).limit(limit)
	end
end
