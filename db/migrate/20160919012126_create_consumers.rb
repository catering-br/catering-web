class CreateConsumers < ActiveRecord::Migration[5.0]
  def change
    create_table :consumers do |t|
      t.integer :client_id

      t.timestamps
    end
  end
end
