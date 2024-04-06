class Instrument < ApplicationRecord
  belongs_to :product_type

  validates :name, presence: true
  validates :model, presence: true
  validates :brand, presence: true
  validates :price, presence: true #, length: { minimum: 1 }

  has_one_attached :photo
end
