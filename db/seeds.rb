# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all

Restaurant.create(name: 'McDonalds', address: "20 Duncan Street", neighbourhood: "Ghetto", 
	price_min: 10, price_max: 4000, summary: "Classy", menu: "double cheeseburber")

Restaurant.create(name: "In 'n Out", address: 'Next Door', price_min: 0, price_max: 2,
	summary: "Cheap Ass Burgers", menu: 'Animal Style Burgers')
