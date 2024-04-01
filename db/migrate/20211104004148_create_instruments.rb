class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :model
      t.string :brand
      t.decimal :price
      t.string :image
      t.string :type_product_id

      t.timestamps
    end
  end
end
