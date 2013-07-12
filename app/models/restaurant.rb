class Restaurant < ActiveRecord::Base
	has_many :booking 
	has_many :user, through: :booking
end
