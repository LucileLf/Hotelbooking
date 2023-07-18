class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :start_date, presence: true
  validates :end_date, presence: true
  # before_save :calculate_total_price

  # def calculate_total_price
  #   nights = (end_date - start_date).to_i
  #   self.total_price = nights * room.price_per_night
  # end
end
