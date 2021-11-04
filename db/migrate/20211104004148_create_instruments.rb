class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :model
      t.string :brand
      t.float :price

      t.timestamps
    end
  end
end