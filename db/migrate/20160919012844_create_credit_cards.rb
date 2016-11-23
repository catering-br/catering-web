class CreateCreditCards < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_cards do |t|
      t.integer :client_id
      t.string :name
      t.string :number
      t.string :digit
      t.string :flag
      t.string :expiration

      t.timestamps
    end
  end
end
