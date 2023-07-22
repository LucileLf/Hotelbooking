class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_one :review
  validates :start_date, presence: true
  validates :end_date, presence: true

end
