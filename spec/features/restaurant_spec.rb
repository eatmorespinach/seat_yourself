require 'spec_helper.rb'

describe 'Restuarant Owner' do
	
	before(:each) do 
		@restaurant = FactoryGirl.create(:restaurant)
		@user_attributes = FactoryGirl.attributes_for(:user)
		@user = User.create(@user_attributes)
		visit root_path	
		click_link("Log in")
		fill_in('Email', :with => @user_attributes[:email])
		fill_in('Password', :with => @user_attributes[:password])
		click_button('Log in')
	end

	context 'click on restaurant profile' do
		it 'view bookings' do
			click_link(@restaurant.name)
			page.should have_text('Bookings')
			page.should have_text('Party Size')
		end
	end
end
