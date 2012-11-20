class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.integer :address_type_id
      t.integer :address_catalog_id

      t.timestamps
    end
  end
end
