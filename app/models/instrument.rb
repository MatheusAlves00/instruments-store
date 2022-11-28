class Instrument < ApplicationRecord
  validates :name, presence: true
  validates :model, presence: true
  validates :brand, presence: true
  validates :price, presence: true #, length: { minimum: 1 }
  validates :image, presence: true
end
