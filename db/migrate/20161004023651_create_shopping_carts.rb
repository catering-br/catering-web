class CreateShoppingCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_carts do |t|
      t.integer :consumer_id
      t.integer :status
      t.float :fees
      t.float :gain
      t.float :promotion_discount
      t.string :total_paid
      t.string :float

      t.timestamps
    end
    add_index :shopping_carts, :consumer_id
  end
end
