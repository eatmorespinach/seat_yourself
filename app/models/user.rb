class User < ActiveRecord::Base
	# has_secure_password
  authenticates_with_sorcery!
end
