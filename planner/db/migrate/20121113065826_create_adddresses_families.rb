class CreateAdddressesFamilies < ActiveRecord::Migration
  def up
    create_table 'addresses_families', id=> false do |t|
      t.column 'address_id', :integer
      t.column 'family_id', :integer
    end
  end

  def down
    drop_table 'addresses_families'
  end
end
