class AddKidIdToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :kid_id, :integer
  end
end
