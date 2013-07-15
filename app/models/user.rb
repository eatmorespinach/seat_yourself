class User < ActiveRecord::Base
	# has_secure_password
  authenticates_with_sorcery!
  # attr_accessible :password, :password_confirmation

  validates_confirmation_of :password

  has_many :bookings
  has_many :restaurants, through: :bookings


  
end
