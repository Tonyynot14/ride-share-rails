class Ride < ApplicationRecord
  validates :rider_id, presence:true

  belongs_to :organization
  belongs_to :driver, optional: true
  belongs_to :rider

  belongs_to :start_location, :class_name => "Location"
  belongs_to :end_location, :class_name => "Location"

  # has_many :locations

end