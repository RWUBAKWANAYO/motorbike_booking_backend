class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :motorbike
  validates :date, :city, presence: true
end
