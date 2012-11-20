class AddArriveTimeToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :arrive_time, :datetime
  end
end
