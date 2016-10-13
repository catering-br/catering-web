class CreateCartItems < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_items do |t|
      t.integer :shopping_cart_id
      t.integer :product_id
      t.float :quantity
      t.float :unitary_price

      t.timestamps
    end
    add_index :cart_items, :shopping_cart_id
  end
end
