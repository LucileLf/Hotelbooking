class Room < ApplicationRecord
  has_many :bookings, dependent: :destroy
  validates :number, presence: true, uniqueness: true
  validates :price_per_night, presence: true
  validates :description, presence: true
  validates :surface, presence: true
  validates :capacite, presence: true
  validates :image_url, presence: true
end
