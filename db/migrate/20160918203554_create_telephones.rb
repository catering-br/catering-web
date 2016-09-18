class CreateTelephones < ActiveRecord::Migration[5.0]
  def change
    create_table :telephones do |t|
      t.integer :client_id
      t.integer :telephone

      t.timestamps
    end
  end
end
