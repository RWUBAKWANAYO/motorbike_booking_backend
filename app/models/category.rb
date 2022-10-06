class Category < ApplicationRecord
  has_many :motorbikes, dependent: :destroy
  validates :categname, presence: true, uniqueness: true
end
