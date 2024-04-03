class AddProductTypeToInstruments < ActiveRecord::Migration[5.2]
  def change
    add_reference :instruments, :product_type, foreign_key: true
  end
end
