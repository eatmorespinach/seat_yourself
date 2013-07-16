class Restaurant < ActiveRecord::Base
	
	has_many :bookings
	has_many :users, through: :bookings

	has_one :owner, :class_name => 'User', :foreign_key => 'restaurant_id'
end
