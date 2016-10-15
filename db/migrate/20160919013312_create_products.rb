class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :professional_id
      t.integer :category_product_id
      t.string :name
      t.text :description
      t.float :price
      t.integer :rating
      t.integer :max_quantity
      t.timestamps
    end
  end
end
