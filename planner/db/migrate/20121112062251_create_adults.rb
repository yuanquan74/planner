class CreateAdults < ActiveRecord::Migration
  def change
    create_table :adults do |t|
      t.integer :family_id
      t.boolean :drive
      t.string :driver_license
      t.integer :seats

      t.timestamps
    end
  end
end
