require 'spec_helper'

feature "Restaurant Listings" do
	scenario "Visit Restaurant Listing Page" do
		(1..3).each do |x|
			FactoryGirl.create(:restauant)
		end
		visit root_path
		expect(page.has_selector?('table')).to be_true
	end
end