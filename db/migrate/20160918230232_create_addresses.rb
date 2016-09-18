class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :client_id
      t.integer :cep
      t.string :street
      t.integer :number
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
