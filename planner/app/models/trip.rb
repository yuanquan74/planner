class Trip < ActiveRecord::Base
  belongs_to :start, :class_name => 'Address'
  belongs_to :destination, :class_name => 'Address'
  belongs_to :kid
  belongs_to :trip_state, :validate=>true
  validates_associated :trip_state
  validates_presence_of :trip_state, :message => "invalid!"
  default_scope :order => 'id'
end
