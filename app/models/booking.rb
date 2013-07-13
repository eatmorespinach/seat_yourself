class Booking < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	validates :party,:presence=>true
end
