class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :professional_id
      t.string :name
      t.text :description
      t.float :price
      t.integer :rating
      t.integer :maxQuantity

      t.timestamps
    end
  end
end
