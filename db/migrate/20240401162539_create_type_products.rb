class CreateTypeProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :type_products do |t|
      t.string :type_product

      t.timestamps
    end
  end
end
