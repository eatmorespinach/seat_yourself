# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	name Faker::Name.name
  	email Faker::Internet.email
  	password 'password'
  	points 10
    restaurant_id 1
  	# salt{ 'asdasdastr4325234324sdfds' }
  	# crypted_password{
  	#  Sorcery::CryptoProviders::BCrypt.encrypt(
  	#  	'secret','asdasdastr4325234324sdfds')}
  	# password_confirmation 'password'
  end
end
