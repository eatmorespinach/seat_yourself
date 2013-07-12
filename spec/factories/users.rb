# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	email Faker::Internet.email
  	password 'password'
  	salt{ 'asdasdastr4325234324sdfds' }
  	crypted_password{
  	 Sorcery::CryptoProviders::BCrypt.encrypt(
  	 	'secret','asdasdastr4325234324sdfds')}
  	# password_confirmation 'password'
  end
end
