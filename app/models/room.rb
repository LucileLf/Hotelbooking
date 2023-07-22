class Room < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :number, presence: true, uniqueness: true
  validates :price_per_night, presence: true
  validates :description, presence: true
  validates :surface, presence: true
  validates :capacite, presence: true
  validates :image_url, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["description", "number"]
  end
end
