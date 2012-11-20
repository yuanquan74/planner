class CreateTripStates < ActiveRecord::Migration
  def change
    create_table :trip_states do |t|
      t.string :state

      t.timestamps
    end
  end
end
