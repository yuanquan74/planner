class Kid < ActiveRecord::Base
  has_many :trips
  belongs_to :family
  belongs_to :school, :class_name => "Address"
end
