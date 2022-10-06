class Motorbike < ApplicationRecord
  belongs_to :category
  # has_many :reservations, dependent: :destroy
  # has_many :users, through: :reservations

  validates :brand, :year, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
