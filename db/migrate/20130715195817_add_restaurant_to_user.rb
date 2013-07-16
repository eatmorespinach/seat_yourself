class AddRestaurantToUser < ActiveRecord::Migration
  def change
    add_column :users, :restaurant_id, :integer, default: => 0
  end
end
