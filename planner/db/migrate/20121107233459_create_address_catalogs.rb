class CreateAddressCatalogs < ActiveRecord::Migration
  def change
    create_table :address_catalogs do |t|
      t.string :name

      t.timestamps
    end
  end
end
