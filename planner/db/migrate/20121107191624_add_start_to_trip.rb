class AddStartToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :start, :string
  end
end
