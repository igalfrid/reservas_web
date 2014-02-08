class Amenity < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :capacity, presence: true, numericality: { only_integer: true }
  validates :description, presence: true, length: { maximum: 505 }
end
