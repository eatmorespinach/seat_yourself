class AddNameandPointToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :points, :integer, :default => 0
  end
end
