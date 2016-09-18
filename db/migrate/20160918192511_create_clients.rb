class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :login
      t.string :email
      t.string :password
      t.string :name
      t.integer :cpf

      t.timestamps
    end
  end
end
