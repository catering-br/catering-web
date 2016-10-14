class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :client_id
      t.string :cep, :limit=>11
      t.string :street
      t.integer :number
      t.string :complement
      t.string :neighborhood
      t.string :city
      t.string :country
      t.integer :address_type
      t.float :delivery_radius

      t.timestamps
    end
  end
end
