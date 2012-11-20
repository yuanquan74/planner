class AddDestinationToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :destination, :integer
  end
end
