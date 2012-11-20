class Address < ActiveRecord::Base
  belongs_to :address_catalog
  belongs_to :address_type
  has_many :starts, :class_name=>'Trip'
  has_many :destinations, :class_name=>'Trip'
  has_and_belongs_to_many :families
  has_one :family
end
