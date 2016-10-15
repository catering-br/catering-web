class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :shopping_cart_id
      t.integer :credit_card_id
      t.integer :number_quotas
      t.decimal :quota_value

      t.timestamps
    end
  end
end
