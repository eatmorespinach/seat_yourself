class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.integer :party

      t.timestamps
    end
  end
end
