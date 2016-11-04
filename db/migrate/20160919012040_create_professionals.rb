class CreateProfessionals < ActiveRecord::Migration[5.0]
  def change
    create_table :professionals do |t|
      t.integer :client_id
      t.text :description
      t.float :rating, :default => 0

      t.timestamps
    end
  end
end
