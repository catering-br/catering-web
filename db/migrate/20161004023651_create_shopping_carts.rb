class CreateShoppingCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_carts do |t|
      t.integer :consumer_id
      t.integer :status
      t.float :fees, :default=>0
      t.float :gain, :default=>0
      t.float :promotion_discount, :default=>0
      t.float :total_paid, :default=>0

      t.timestamps
    end
    add_index :shopping_carts, :consumer_id
  end
end
