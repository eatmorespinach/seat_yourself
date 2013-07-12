require 'spec_helper'

feature "Visitor" do
	scenario "Visit Restaurant Listing Page" do
		(1..3).each do |x|
			FactoryGirl.create(:restaurant)
		end
		visit root_path
		expect(page.has_selector?('table')).to be_true
		# binding.pry
		expect(page.all('tr')).to have(3).items
	end

	scenario "Click on Restaurant" do

		restaurant = FactoryGirl.create(:restaurant)
		visit root_path
		click_link(restaurant.name)

		
		expect(page.has_selector?('table')).to be_true
		expect(page.has_content(restaurant.name))
		expect(page.has_content(restaurant.address))
		expect(page.has_content(restaurant.city))

	end 



end
