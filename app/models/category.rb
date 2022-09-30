class Category < ApplicationRecord
  has_many :motorcycles
  validates :categname
end
