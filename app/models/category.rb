class Category < ApplicationRecord
  has_many :motorcycles
  validates :categname, presence: true, uniqueness: true
end
