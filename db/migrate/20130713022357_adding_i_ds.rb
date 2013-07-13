class AddingIDs < ActiveRecord::Migration
  def change
  	add_reference :bookings, :user , index: true
  	add_reference :bookings, :restaurant , index: true
  end
end
