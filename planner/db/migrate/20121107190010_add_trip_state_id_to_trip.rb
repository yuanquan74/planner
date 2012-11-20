class AddTripStateIdToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :trip_state_id, :integer
  end
end
