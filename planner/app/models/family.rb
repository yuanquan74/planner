class Family < ActiveRecord::Base
  belongs_to  :address
  has_and_belongs_to_many  :addresses
  has_many  :kids
  has_many  :adults
end
