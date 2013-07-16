# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  	name Faker::Name.name
  	email Faker::Internet.email
  	password 'password'
  	points 10
    restaurant_id 1
  end
  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    password 'password'
    points 15
    restaurant_id 2
  end
end
