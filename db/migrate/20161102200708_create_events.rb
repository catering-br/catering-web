class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :client_id
      t.date :event_data
      t.time :hour
      t.integer :attendants
      t.integer :address_id
      t.time :duration
      t.decimal :estimated_price_from
      t.decimal :estimated_price_until

      t.timestamps
    end
  end
end
