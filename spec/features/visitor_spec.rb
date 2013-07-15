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


	context "with an authenticated user" do
		before(:each) do 
			@restaurant = FactoryGirl.create(:restaurant)
		
			visit root_path
			@user_attributes = FactoryGirl.attributes_for(:user)
			@user = User.create(@user_attributes)
			
		end

		scenario "User logs in" do

			click_link("Log in")
			expect(page.has_selector?('form')).to be_true

			fill_in('Email', :with => @user_attributes[:email])
			fill_in('Password', :with => @user_attributes[:password])

			click_button('Log in')
			expect(page).to have_text("Logged in!")
		end

		scenario "User can make a booking online" do
			click_link(@restaurant.name)
			click_link('Create Booking')
		end

		scenario "User can fill out booking form and submit" do

			click_link(@restaurant.name)
			click_link('Create Booking')
			expect(page).to have_text("Bookings")
			expect(page.has_selector?('form')).to be_true
			
			fill_in('Date', :with => DateTime.new(2013,7,23,4,5,6))
			fill_in('Party', :with => 20)
						# binding.pry
			click_button('Create Booking')
			expect(page).to have_text("Booked!")
		end

		scenario "user can visit their profile page" do
			click_link("Log in")
			fill_in('Email', :with => @user_attributes[:email])
			fill_in('Password', :with => @user_attributes[:password])
			click_button('Log in')
# binding.pry
			click_link('Profile')
			expect(page).to have_text(@user.name)
			expect(page).to have_text(@user.email)
			expect(page).to have_text(@user.points)
		end

		scenario "user makes booking and visits profile page and sees extra point" do
			click_link("Log in")
			fill_in('Email', :with => @user_attributes[:email])
			fill_in('Password', :with => @user_attributes[:password])
			click_button('Log in')


		end
	end
end
