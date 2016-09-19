class CreateBankings < ActiveRecord::Migration[5.0]
  def change
    create_table :bankings do |t|
      t.integer :professional_id
      t.integer :bank
      t.integer :agency
      t.integer :account

      t.timestamps
    end
  end
end
