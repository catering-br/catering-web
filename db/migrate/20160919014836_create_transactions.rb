class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :product_id
      t.integer :consumer_id
      t.float :amount
      t.float :unitary_price
      t.float :total_price

      t.timestamps
    end
  end
end
