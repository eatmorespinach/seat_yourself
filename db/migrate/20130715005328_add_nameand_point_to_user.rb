class AddNameandPointToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :points, :integer
  end
end
