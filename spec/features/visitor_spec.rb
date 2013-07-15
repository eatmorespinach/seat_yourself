require 'spec_helper'

feature "Visitor" do
	scenario "Visit Restaurant Listing Page" do
		(1..3).each do |x|
			FactoryGirl.create(:restaurant)
		end
		visit root_path
		expect(page.has_selector?('table')).to be_true
		expect(page.all('tr')).to have(3).items
	end

	scenario "Click on Restaurant" do

		restaurant = FactoryGirl.create(:restaurant)
		visit root_path
		click_link(restaurant.name)

		expect(page.has_selector?('table')).to be_true
		expect(page.has_content?(restaurant.name))
		expect(page.has_content?(restaurant.address))
		expect(page.has_content?(restaurant.neighbourhood))
		expect(page.has_content?(restaurant.price_min))
		expect(page.has_content?(restaurant.price_min))
		expect(page.has_content?(restaurant.summary))
		expect(page.has_content?(restaurant.menu))
	end 

	scenario "Sign Up for Customer Account" do
		user = FactoryGirl.build(:user)
		visit root_path
		click_link("Sign Up")

		expect(page.has_selector?('form')).to be_true
		
		fill_in('Email', :with => user.email)
		fill_in('Password', :with => user.password)
		fill_in('Password confirmation', :with => user.password)
		click_button('Create User')

		expect(page).to have_text("Signed Up!")
	end
end
