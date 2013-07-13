class Booking < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	validates :party, :date, :presence=>true
end
