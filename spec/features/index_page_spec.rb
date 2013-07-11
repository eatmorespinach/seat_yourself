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
		
		click_link(restaurant.name)
		binding.pry
		expect(page.should render_template restaurant_path)
		expect(page.has_selector?('table')).to be_true


	end 



end
