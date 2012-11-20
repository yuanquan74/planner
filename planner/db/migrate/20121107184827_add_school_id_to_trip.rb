class AddSchoolIdToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :school_id, :integer
  end
end
