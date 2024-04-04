class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :model
      t.string :brand
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
