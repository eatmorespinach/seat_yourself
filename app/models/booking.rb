class Booking < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user

	validates :party, numericality: {less_than_or_equal_to:20, greater_than_or_equal_to:2}
end
