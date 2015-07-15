class CreateSpecifications < ActiveRecord::Migration
  def change
    create_table :specifications do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.integer :ord
      t.integer :product_id, null: false

      t.timestamps
    end
  end
end
