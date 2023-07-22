class Review < ApplicationRecord
  belongs_to :booking
  has_one :room, through: :booking
  validates :rating, :comment, presence: true
end
