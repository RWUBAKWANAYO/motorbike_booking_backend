class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :motorcycle

  validates :date, :city, presence: true
end
