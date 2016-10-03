class CreateKeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :keywords do |t|
      t.integer :product_id
      t.string :word

      t.timestamps
    end
  end
end
