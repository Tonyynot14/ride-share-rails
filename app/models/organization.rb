class Organization < ApplicationRecord
  has_many :drivers, dependent: :destroy
  has_many :riders, dependent: :destroy
  has_many :rides, dependent: :destroy

end
