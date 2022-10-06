class Advert < ApplicationRecord
  validates :name, :image, presence: true
end
