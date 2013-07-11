class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    	t.string :name
    	t.string :address
    	t.string :neighbourhood
    	t.integer :price_min
    	t.integer :price_max
    	t.text :summary
    	t.text :menu

      t.timestamps
    end
  end
end
