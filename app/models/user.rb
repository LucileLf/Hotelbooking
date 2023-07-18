class User < ApplicationRecord
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :prenom, presence: true
  validates :nom, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end
