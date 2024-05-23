class Orderable < ApplicationRecord
  belongs_to :instrument
  belongs_to :shopping_cart
end
