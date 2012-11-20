class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :extra_seats
      t.integer :matched

      t.timestamps
    end
  end
end
