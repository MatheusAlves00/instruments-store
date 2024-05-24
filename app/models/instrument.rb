class Instrument < ApplicationRecord
  belongs_to :product_type
  has_many :orderables
  has_many :shopping_carts, through: :orderables

  validates :name, presence: true
  validates :model, presence: true
  validates :brand, presence: true
  validates :price, presence: true #, length: { minimum: 1 }

  has_one_attached :photo
end
